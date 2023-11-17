using LuxuryRest.Context;
using LuxuryRest.Model;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace LuxuryRest.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class VentasController : ControllerBase
	{
		private readonly AppDbContext _context;

		public VentasController(AppDbContext context)
		{
			_context = context;
		}

		// GET: api/<VentasController>
		[HttpGet]
		public ActionResult Get()
		{
			try
			{
				return Ok(_context.Ventas.ToList());
			}
			catch (Exception ex)
			{
				return BadRequest(ex.Message);
			}
		}

		// GET api/<VentasController>/5
		[HttpGet("{id}", Name = "Ventas")]
		public ActionResult Get(int id)
		{
			try
			{
				var venta = _context.Ventas.FirstOrDefault(v => v.id_venta == id);
				if (venta == null)
				{
					return NotFound();
				}
				return Ok(venta);
			}
			catch (Exception ex)
			{
				return BadRequest(ex.Message);
			}
		}

		// POST api/<VentasController>
		[HttpPost]
		public ActionResult Post([FromBody] Ventas ventas)
		{
			try
			{
				_context.Ventas.Add(ventas);
				_context.SaveChanges();
				return CreatedAtRoute("Ventas", new { id = ventas.id_venta }, ventas);
			}
			catch (Exception ex)
			{
				return BadRequest(ex.Message);
			}
		}

		// PUT api/<VentasController>/5
		[HttpPut("{id}")]
		public ActionResult Put(int id, [FromBody] Ventas ventas)
		{
			try
			{
				if (ventas.id_venta == id)
				{
					_context.Entry(ventas).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
					_context.SaveChanges();
					return CreatedAtRoute("Ventas", new { id = ventas.id_venta }, ventas);
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

		[HttpDelete("{id}")]
		public ActionResult Delete(int id)
		{
			try
			{
				var venta = _context.Ventas.Find(id);

				if (venta == null)
				{
					return NotFound($"Venta con id {id} no encontrada.");
				}

				_context.Ventas.Remove(venta);
				_context.SaveChanges();

				return NoContent();
			}
			catch (Exception ex)
			{
				return BadRequest(ex.Message);
			}
		}
	}
}