using LuxuryRest.Context;
using LuxuryRest.Model;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace LuxuryRest.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class ProductosController : Controller
	{
		private readonly AppDbContext _context;

		public ProductosController(AppDbContext context)
		{
			_context = context;
		}

		// GET: api/<ProductosController>
		[HttpGet]
		public ActionResult Get()
		{
			try
			{
				return Ok(_context.Productos.ToList());
			}
			catch (Exception ex)
			{
				return BadRequest(ex.Message);
			}
		}

		// GET api/<ProductosController>/5
		[HttpGet("{id}", Name = "Productos")]
		public ActionResult Get(int id)
		{
			try
			{
				var producto = _context.Productos.FirstOrDefault(p => p.id_producto == id);
				if (producto == null)
				{
					return NotFound();
				}
				return Ok(producto);
			}
			catch (Exception ex)
			{
				return BadRequest(ex.Message);
			}
		}

		//private POST api/<ProductosController>

		[HttpPost]
		public ActionResult Post([FromBody] Productos productos)
		{
			try
			{
				var materiasPrimasRequeridas = _context.Materias_Primas.Where(mp => mp.id_materia_prima == productos.cantidad_disponible && mp.cantidad_minima_requerida >= productos.cantidad_disponible).ToList();

				if (materiasPrimasRequeridas.Count < productos.cantidad_disponible)
				{
					return BadRequest("No hay suficientes materias primas para crear el producto.");
				}

				// Actualizar el stock de las materias primas utilizadas
				foreach (var materiaPrima in materiasPrimasRequeridas)
				{
					materiaPrima.cantidad_minima_requerida -= productos.cantidad_disponible;
				}

				// Crear el nuevo producto
				_context.Productos.Add(productos);
				_context.SaveChanges();

				return CreatedAtRoute("Productos", new { id = productos.id_producto }, productos);
			}
			catch (Exception ex)
			{
				return BadRequest(ex.Message);
			}
		}

        // PUT api/<ProductosController>/5
        [HttpPut("{id}")]
        public IActionResult Put(int id, [FromBody] Productos producto)
        {
            try
            {
                // Obtener el producto existente
                var existingProducto = _context.Productos.Find(id);
                if (existingProducto != null)
                {
                    // Calcular la diferencia en la cantidad
                    var cantidadDiff = producto.cantidad_disponible - existingProducto.cantidad_disponible;
                    if (cantidadDiff > 0 && producto.nombre == "Devolucion")
                    {
                        existingProducto.cantidad_disponible = existingProducto.cantidad_disponible + cantidadDiff;
                        //Guardar cambios en producto
                        _context.Entry(existingProducto).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
                        _context.SaveChanges();
                        return Ok(existingProducto);

                    }
                    if (cantidadDiff > 0)
                    {
                        // Obtener la receta para este producto
                        var recipeLines = _context.Receta.Where(l => l.id_producto == id);
                        foreach (var linea in recipeLines)
                        {
                            // Obtener materia prima e inventario
                            var materiaPrima = _context.Materias_Primas.Find(linea.id_materia_prima);
                            var inventario = _context.Inventario.Find(materiaPrima.id_materia_prima);

                            // Calcular cantidad requerida
                            var requiredQty = linea.cantidad_requerida * cantidadDiff;

                            // Validar que haya suficiente
                            if (inventario.cantidad_almacenada < requiredQty)
                            {
                                return BadRequest("No hay suficiente materia prima");
                            }
                        }
                        foreach (var linea in recipeLines)
                        {
                            // Obtener materia prima e inventario
                            var materiaPrima = _context.Materias_Primas.Find(linea.id_materia_prima);
                            var inventario = _context.Inventario.Find(materiaPrima.id_materia_prima);

                            // Calcular cantidad requerida
                            var requiredQty = linea.cantidad_requerida * cantidadDiff;

                            // Descontar del inventario
                            inventario.cantidad_almacenada = inventario.cantidad_almacenada - requiredQty;

                            //Guardar cambios en inventario
                            _context.Entry(inventario).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
                            _context.SaveChanges();
                        }
                        existingProducto.cantidad_disponible = existingProducto.cantidad_disponible + cantidadDiff;
                        //Guardar cambios en producto
                        _context.Entry(existingProducto).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
                        _context.SaveChanges();
                        return Ok(existingProducto);
                    }
                    if (cantidadDiff < 0)
                    {
                        existingProducto.cantidad_disponible = producto.cantidad_disponible;
                        //Guardar cambios en producto
                        _context.Entry(existingProducto).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
                        _context.SaveChanges();
                        return Ok(existingProducto);
                    }
                    if (producto.nombre.Length > 0 && producto.descripcion.Length > 0 && producto.precio_venta != 0)
                    {
                        existingProducto.nombre = producto.nombre;
                        existingProducto.descripcion = producto.descripcion;
                        if (producto.imagen.Length > 0)
                        {
                            existingProducto.imagen = producto.imagen;
                        }
                        existingProducto.precio_venta = producto.precio_venta;
                        _context.Entry(existingProducto).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
                        _context.SaveChanges();
                        return Ok(existingProducto);
                    }
                    if (producto.valoracionC != 0)
                    {
                        existingProducto.valoracionT = existingProducto.valoracionT + 1;
                        existingProducto.valoracionC = existingProducto.valoracionC + producto.valoracionC;
                        _context.Entry(existingProducto).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
                        _context.SaveChanges();
                        return Ok(producto);
                    }
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
            // Resto del código
            return NoContent();
        }

        //Actualizar normal
        [HttpPut("update/{id}")]






        // DELETE api/<ProductosController>/5
        [HttpDelete("{id}")]
		public ActionResult Delete(int id)
		{
			try
			{
				var product = _context.Productos.FirstOrDefault(p => p.id_producto == id);

				if (product != null)
				{
					product.estatus = 0; // Marcar el producto como inactivo (eliminación lógica)
					_context.SaveChanges();
					return Ok(); // Puedes devolver cualquier código de estado HTTP adecuado para confirmar el éxito.
				}
				else
				{
					return NotFound(); // Si no se encuentra el producto con el ID proporcionado, devuelve un código 404.
				}
			}
			catch (Exception ex)
			{
				return BadRequest(ex.Message);
			}
		}
	}
}