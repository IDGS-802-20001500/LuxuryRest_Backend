using LuxuryRest.Context;
using LuxuryRest.Model;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Linq;

namespace LuxuryRest.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class PedidosController : Controller
	{
		private readonly AppDbContext _context;

		public PedidosController(AppDbContext context)
		{
			_context = context;
		}

		// GET: api/<PedidosController>
		[HttpGet]
		public ActionResult Get()
		{
			try
			{
				return Ok(_context.Pedidos.ToList());
			}
			catch (Exception ex)
			{
				return BadRequest(ex.Message);
			}
		}

        // GET: api/<PedidosController>
        [HttpGet("pedidosproductos", Name ="GetPedidosProducto")]
        public ActionResult GetPedidosProducto()
        {
            try
            {
                return Ok(_context.Pedidos_Productos.ToList());
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }



        // GET api/<PedidosController>/5
        [HttpGet("{id}", Name = "Pedidos")]
		public ActionResult Get(int id)
		{
			try
			{
				var pedido = _context.Pedidos.FirstOrDefault(pe => pe.id_pedido == id);
				if (pedido == null)
				{
					return NotFound();
				}
				return Ok(pedido);
			}
			catch (Exception ex)
			{
				return BadRequest(ex.Message);
			}
		}

		// POST api/<PedidosController>
		[HttpPost]
		public ActionResult Post([FromBody] Pedidos pedidos)
		{
			try
			{
				// Verificar si ya existe un pedido con el mismo Id_Pedido en la tabla Pedidos
				var existingPedido = _context.Pedidos.FirstOrDefault(p => p.id_pedido == pedidos.id_pedido);
				if (existingPedido != null)
				{
					return BadRequest("Ya existe un pedido con el mismo Id_Pedido.");
				}

				_context.Pedidos.Add(pedidos);
				_context.SaveChanges();

				// A continuación, agregamos los registros en la tabla Pedidos_Productos
				// con el Id_Pedido recién insertado y los datos relevantes de los productos asociados al pedido

				_context.SaveChanges();

				return CreatedAtRoute("Pedidos", new { id = pedidos.id_pedido }, pedidos);
			}
			catch (Exception ex)
			{
				return BadRequest(ex.Message);
			}
		}

		// PUT api/<PedidosController>/5
		[HttpPut("{id}")]
		public ActionResult Put(int id, [FromBody] Pedidos pedidoActualizado)
		{
			try
			{
				var pedido = _context.Pedidos.FirstOrDefault(pe => pe.id_pedido == id);
				if (pedido == null)
				{
					return NotFound();
				}

				// Realizar las actualizaciones necesarias en el objeto "pedido" con los datos recibidos en el cuerpo del mensaje.
				pedido.id_usuario = pedidoActualizado.id_usuario;
				pedido.estado_pedido = pedidoActualizado.estado_pedido;
				pedido.fecha_hora_pedido = pedidoActualizado.fecha_hora_pedido;
				pedido.domicilio = pedidoActualizado.domicilio;
				pedido.empleado = pedidoActualizado.empleado;
				pedido.fecha_hora_entrega = pedidoActualizado.fecha_hora_entrega;

				// Si tienes una lista de productos asociados al pedido, también puedes actualizarla
				// Aquí un ejemplo de cómo actualizar la lista de productos:

				_context.Entry(pedido).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
				_context.SaveChanges();

				return Ok(pedido);
			}
			catch (Exception ex)
			{
				return BadRequest(ex.Message);
			}
		}

		// DELETE api/<PedidosController>/5
		[HttpDelete("{id}")]
		public ActionResult Delete(int id)
		{
			try
			{
				var pedido = _context.Pedidos.FirstOrDefault(pe => pe.id_pedido == id);
				if (pedido == null)
				{
					return NotFound();
				}

                //Obtener la cantidad de producto comprada
                var productosPedido = _context.Pedidos_Productos
                    .Where(pp => pp.id_pedido == id)
                    .ToList();
                foreach (var pedidoProducto in productosPedido)
                {
                    // Obtener el producto asociado al pedido
                    var producto = _context.Productos
                        .FirstOrDefault(p => p.id_producto == pedidoProducto.id_producto);

					Console.WriteLine(producto.cantidad_disponible);
					

                    if (producto != null)
                    {
                        // Devolver la cantidad al stock
                        producto.cantidad_disponible += pedidoProducto.cantidad;

						Console.WriteLine(pedidoProducto.cantidad);

                        // Actualizar el producto en la base de datos
                        _context.Productos.Update(producto);
                    }
                }

                _context.Pedidos.Remove(pedido);

				_context.SaveChanges();

				return Ok("Pedido eliminado correctamente.");
			}
			catch (Exception ex)
			{
				return BadRequest(ex.Message);
			}
		}
	}
}