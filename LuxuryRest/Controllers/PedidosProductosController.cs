
using LuxuryRest.Context;
using LuxuryRest.Model;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Linq;

namespace LuxuryRest.Controllers
{
    [Route("api/[controller]")]
    [ApiController]

    public class PedidosProductosController : Controller
    {
        private readonly AppDbContext _context;

        public PedidosProductosController(AppDbContext context)
        {
            _context = context;
        }


        // GET: api/<PedidosController>
        [HttpGet]
        public ActionResult Get()
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



        [HttpPost]
        public ActionResult Post([FromBody] Pedidos_Productos pedidos_Productos)
        {
            try
            {
                _context.Pedidos_Productos.Add(pedidos_Productos);
                _context.SaveChanges();
                return Ok();
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
    }
}
