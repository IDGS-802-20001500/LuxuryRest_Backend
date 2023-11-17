using LuxuryRest.Context;
using LuxuryRest.Model;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace LuxuryRest.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class ProveedoresController : ControllerBase
	{
		private readonly AppDbContext _context;

		public ProveedoresController(AppDbContext context)
		{
			_context = context;
		}

		// GET: api/<ProveedoresController>
		[HttpGet]
		public ActionResult Get()
		{
			try
			{
				return Ok(_context.Proveedores.ToList());
			}
			catch (Exception ex)
			{
				return BadRequest(ex.Message);
			}
		}

		// GET api/<ProveedoresController>/5
		[HttpGet("{id}", Name = "Proveedores")]
		public ActionResult Get(int id)
		{
			try
			{
				var proveedor = _context.Proveedores.FirstOrDefault(prove => prove.id_proveedor == id);
				if (proveedor == null)
				{
					return NotFound();
				}
				return Ok(proveedor);
			}
			catch (Exception ex)
			{
				return BadRequest(ex.Message);
			}
		}

		// POST api/<ProveedoresController>
		[HttpPost]
		public ActionResult Post([FromBody] Proveedores proveedores)
		{
			try
			{
				_context.Proveedores.Add(proveedores);
				_context.SaveChanges();
				return CreatedAtRoute("Proveedores", new { id = proveedores.id_proveedor }, proveedores);
			}
			catch (Exception ex)
			{
				return BadRequest(ex.Message);
			}
		}

		// PUT api/<ProveedoresController>/5
		[HttpPut("{id}")]
		public ActionResult Put(int id, [FromBody] Proveedores proveedores)
		{
			try
			{
				if (proveedores.id_proveedor == id)
				{
					_context.Entry(proveedores).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
					_context.SaveChanges();
					return CreatedAtRoute("Proveedores", new { id = proveedores.id_proveedor }, proveedores);
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

		// DELETE api/<ProveedoresController>/5
		[HttpDelete("{id}")]
		public void Delete(int id)
		{
		}
	}
}