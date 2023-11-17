using LuxuryRest.Context;
using LuxuryRest.Model;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace LuxuryRest.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class InventarioController : ControllerBase
	{
		private readonly AppDbContext _context;

		public InventarioController(AppDbContext context)
		{
			_context = context;
		}

		// GET: api/<InventarioController>
		[HttpGet]
		public ActionResult Get()
		{
			try
			{
				return Ok(_context.Inventario.ToList());
			}
			catch (Exception ex)
			{
				return BadRequest(ex.Message);
			}
		}

		// GET api/<InventarioController>/5
		[HttpGet("{id}", Name = "Inventario")]
		public ActionResult Get(int id)
		{
			try
			{
				var inventario = _context.Inventario.FirstOrDefault(i => i.id_inventario == id);
				if (inventario == null)
				{
					return NotFound();
				}
				return Ok(inventario);
			}
			catch (Exception ex)
			{
				return BadRequest(ex.Message);
			}
		}

        [HttpPut("{id}")]
        public ActionResult modificarInventario(int id, [FromBody] Inventario inv)
        {
            try
            {
                if (inv.id_inventario == id)
                {
                    _context.Entry(inv).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
                    _context.SaveChanges();
                    return Ok();
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
    }
}