using Microsoft.AspNetCore.Mvc;
using LuxuryRest.Model;
using LuxuryRest.Context;

namespace LuxuryRest.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MermaController : ControllerBase
    {
        private readonly AppDbContext _context;

        public MermaController(AppDbContext context)
        {
            _context = context;
        }

        // GET: api/Merma
        [HttpGet]
        public ActionResult Get()
        {
            try
            {
                return Ok(_context.Merma.ToList());
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        // GET api/Merma/{mermaId}/{productoId}
        [HttpGet("{mermaId}/{productoId}", Name = "Merma")]
        public ActionResult Get(int mermaId, int productoId)
        {
            try
            {
                var merma = _context.Merma.FirstOrDefault(m => m.id_Merma == mermaId && m.id_producto == productoId);
                if (merma == null)
                {
                    return NotFound();
                }
                return Ok(merma);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        // POST api/Merma
        [HttpPost]
        public async Task<ActionResult<Merma>> PostMerma(Merma merma)
        {
            if (_context.Merma == null)
            {
                return Problem("Entity set 'LuxuryRestContext.Mermas'  is null.");
            }
            _context.Merma.Add(merma);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetMerma", new { id = merma.id_Merma }, merma);
        }

        // PUT api/Merma/{mermaId}/{productoId}
        [HttpPut("{mermaId}/{productoId}")]
        public ActionResult Put(int mermaId, int productoId, [FromBody] Merma merma)
        {
            try
            {
                if (merma.id_Merma == mermaId && merma.id_producto == productoId)
                {
                    _context.Entry(merma).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
                    _context.SaveChanges();
                    return CreatedAtRoute("Merma", new { mermaId = merma.id_Merma, productoId = merma.id_producto }, merma);
                }
                else
                {
                    return BadRequest();
                }
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        // DELETE api/Merma/{mermaId}/{productoId}
        [HttpDelete("{mermaId}/{productoId}")]
        public ActionResult Delete(int mermaId, int productoId)
        {
            try
            {
                var merma = _context.Merma.FirstOrDefault(m => m.id_Merma == mermaId && m.id_producto == productoId);

                if (merma != null)
                {
                    _context.Merma.Remove(merma);
                    _context.SaveChanges();
                    return Ok();
                }
                else
                {
                    return NotFound();
                }
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
    }
}