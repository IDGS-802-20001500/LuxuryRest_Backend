using LuxuryRest.Context;
using LuxuryRest.Model;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace LuxuryRest.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class RecetaController : ControllerBase
	{
		private readonly AppDbContext _context;

		public RecetaController(AppDbContext context)
		{
			_context = context;
		}

		// GET: api/<RecetaController>
		[HttpGet]
		public ActionResult Get()
		{
			try
			{
				return Ok(_context.Receta.ToList());
			}
			catch (Exception ex)
			{
				return BadRequest(ex.Message);
			}
		}

		// GET api/<RecetaController>/5
		[HttpGet("{id}", Name = "Receta")]
		public ActionResult Get(int id)
		{
			try
			{
				var receta = _context.Receta.FirstOrDefault(r => r.id_receta == id);
				if (receta == null)
				{
					return NotFound();
				}
				return Ok(receta);
			}
			catch (Exception ex)
			{
				return BadRequest(ex.Message);
			}
		}

		// POST api/<RecetaController>
		[HttpPost]
		public ActionResult Post([FromBody] Receta receta)
		{
			try
			{
				_context.Receta.Add(receta);
				_context.SaveChanges();
				return CreatedAtRoute("Recetas", new { id = receta.id_receta }, receta);
			}
			catch (Exception ex)
			{
				return BadRequest(ex.Message);
			}
		}

		// PUT api/<RecetaController>/5
		[HttpPut("{id}")]
		public ActionResult Put(int id, [FromBody] Receta receta)
		{
			try
			{
				if (receta.id_receta == id)
				{
					_context.Entry(receta).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
					_context.SaveChanges();
					return CreatedAtRoute("Recetas", new { id = receta.id_receta }, receta);
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

		// DELETE api/<RecetaController>/5
		[HttpDelete("{id}")]
		public void Delete(int id)
		{
		}
	}
}