using LuxuryRest.Context;
using LuxuryRest.Model;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace LuxuryRest.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class Materias_PrimasController : Controller
    {
        private readonly AppDbContext _context;

        public Materias_PrimasController(AppDbContext context)
        {
            _context = context;
        }

        // GET: api/<Materias_PrimasController>
        [HttpGet]
        public ActionResult Get()
        {
            try
            {
                return Ok(_context.Materias_Primas.ToList());
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        // GET api/<Materias_PrimasController>/5
        [HttpGet("{id}", Name = "Materias_Primas")]
        public ActionResult Get(int id)
        {
            try
            {
                var materiaPrima = _context.Materias_Primas.FirstOrDefault(mp => mp.id_materia_prima == id);
                if (materiaPrima == null)
                {
                    return NotFound();
                }
                return Ok(materiaPrima);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        // POST api/<Materias_PrimasController>
        [HttpPost]
        public IActionResult Post([FromBody] Materias_Primas materias_Primas)
        {
            try
            {
                // First, add the Materias_Primas to the database
                _context.Materias_Primas.Add(materias_Primas);
                _context.SaveChanges();

                // Second, add an entry in the Inventario for the new Materias_Primas
                var inventarioEntry = new Inventario
                {
                    id_materia_prima = materias_Primas.id_materia_prima,
                    cantidad_almacenada = GetTotalCantidadComprada(materias_Primas.id_materia_prima)
                };

                _context.Inventario.Add(inventarioEntry);
                _context.SaveChanges();

                return CreatedAtRoute("Materias_Primas", new { id = materias_Primas.id_materia_prima }, materias_Primas);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        // Helper method to get the total cantidad_comprada from Compras for a given materia prima
        private int GetTotalCantidadComprada(int idMateriaPrima)
        {
            return _context.Compras
                .Where(c => c.id_materia_prima == idMateriaPrima)
                .Sum(c => c.cantidad_comprada);
        }

        // PUT api/<Materias_PrimasController>/5
        [HttpPut("{id}")]
        public IActionResult Put(int id, [FromBody] Materias_Primas materias_Primas)
        {
            try
            {
                if (materias_Primas.id_materia_prima == id)
                {
                    // Check if the materia prima exists in the database
                    var existingMateriaPrima = _context.Materias_Primas.Find(id);
                    if (existingMateriaPrima == null)
                    {
                        return NotFound($"Materia prima con id {id} no encontrada.");
                    }

                    // Update the existing materia prima with the new values
                    _context.Entry(existingMateriaPrima).CurrentValues.SetValues(materias_Primas);
                    _context.SaveChanges();

                    // Update the cantidad_almacenada in Inventario based on the total cantidad_comprada
                    var totalCantidadComprada = GetTotalCantidadC(id);
                    var inventarioEntry = _context.Inventario.FirstOrDefault(i => i.id_materia_prima == id);
                    if (inventarioEntry != null)
                    {
                        inventarioEntry.cantidad_almacenada = totalCantidadComprada;
                        _context.SaveChanges();
                    }

                    return Ok(materias_Primas);
                }
                else
                {
                    return BadRequest("El ID de la materia prima no coincide con el ID proporcionado.");
                }
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        // Helper method to get the total cantidad_comprada from Compras for a given materia prima
        private int GetTotalCantidadC(int idMateriaPrima)
        {
            return _context.Compras
                .Where(c => c.id_materia_prima == idMateriaPrima)
                .Sum(c => c.cantidad_comprada);
        }


        // DELETE api/<Materias_PrimasController>/5
        [HttpDelete("{id}")]
        public ActionResult Delete(int id)
        {
            try
            {
                var materiaPrima = _context.Materias_Primas.FirstOrDefault(mp => mp.id_materia_prima == id);
                if (materiaPrima == null)
                {
                    return NotFound();
                }

                // Realizar el borrado lógico cambiando el valor del campo "Activo" a "false"
                materiaPrima.Activo = false;

                _context.Entry(materiaPrima).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
                _context.SaveChanges();

                return Ok("Materia prima desactivada correctamente de forma lógica.");
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
    }
}