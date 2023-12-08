using LuxuryRest.Context;
using LuxuryRest.Model;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace LuxuryRest.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ComprasController : ControllerBase
    {
        private readonly AppDbContext _context;

        public ComprasController(AppDbContext context)
        {
            _context = context;
        }

        // GET: api/<ComprasController>
        [HttpGet]
        public ActionResult<string> Get()
        {
            try
            {
                return Ok(_context.Compras.ToList());
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        // GET api/<ComprasController>/5
        [HttpGet("{id}", Name = "Compras")]
        public ActionResult Get(int id)
        {
            try
            {
                var compra = _context.Compras.FirstOrDefault(c => c.id_compra == id);
                if (compra == null)
                {
                    return NotFound();
                }
                return Ok(compra);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        // POST api/<ComprasController>
        [HttpPost]
        public ActionResult Post([FromBody] Compras compras)
        {
            try
            {
                // Verificar si hay suficiente cantidad almacenada de la materia prima
                var materiaPrima = _context.Materias_Primas.FirstOrDefault(mp => mp.id_materia_prima == compras.id_materia_prima);

                if (materiaPrima == null || materiaPrima.cantidad_minima_requerida < compras.cantidad_comprada)
                {
                    return BadRequest("No hay suficiente cantidad almacenada de la materia prima para realizar la compra.");
                }

                // Actualizar la cantidad almacenada de la materia prima
                var inventario = _context.Inventario.FirstOrDefault(i => i.id_materia_prima == materiaPrima.id_materia_prima);
                inventario.cantidad_almacenada += compras.cantidad_comprada;

                // Agregar la compra a la tabla Compras
                _context.Compras.Add(compras);
                _context.SaveChanges();

                _context.Entry(inventario).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
                _context.SaveChanges();

                return CreatedAtRoute("Compras", new { id = compras.id_compra }, compras);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }// PUT api/<ComprasController>/5
        [HttpPut("{id}")]
        public ActionResult Put(int id, [FromBody] Compras compras)
        {
            try
            {
                if (compras.id_compra == id)
                {
                    var existingCompra = _context.Compras.FirstOrDefault(c => c.id_compra == id);
                    if (existingCompra == null)
                    {
                        return NotFound();
                    }

                    // Obtener la materia prima asociada a la compra
                    var materiaPrima = _context.Materias_Primas.FirstOrDefault(mp => mp.id_materia_prima == compras.id_materia_prima);
                    if (materiaPrima == null)
                    {
                        return BadRequest("La materia prima especificada no existe.");
                    }

                    // Verificar si hay suficiente cantidad almacenada de la materia prima
                    if (materiaPrima.cantidad_minima_requerida < compras.cantidad_comprada)
                    {
                        return BadRequest("No hay suficiente cantidad almacenada de la materia prima para realizar la compra.");
                    }

                    // Calcular la diferencia en la cantidad comprada
                    int cantidadDiferencia = compras.cantidad_comprada - existingCompra.cantidad_comprada;

                    // Actualizar la cantidad almacenada de la materia prima
                    materiaPrima.cantidad_minima_requerida -= cantidadDiferencia;

                    // Actualizar los datos de la compra
                    existingCompra.id_usuario = compras.id_usuario;
                    existingCompra.id_materia_prima = compras.id_materia_prima;
                    existingCompra.cantidad_comprada = compras.cantidad_comprada;
                    existingCompra.fecha_compra = compras.fecha_compra;

                    _context.SaveChanges();
                    return Ok(existingCompra); // Respondemos con los datos actualizados de la compra
                }
                else
                {
                    return BadRequest("IDs de compra no coinciden.");
                }
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
        // DELETE api/<ComprasController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}