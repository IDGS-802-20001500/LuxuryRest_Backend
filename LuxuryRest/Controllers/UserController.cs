using Microsoft.AspNetCore.Mvc;
using LuxuryRest.Context;
using LuxuryRest.Model;
using System.Security.Cryptography;
using System.Text;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Identity;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace LuxuryRest.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserController : Controller
    {
        private readonly AppDbContext _context;

        public UserController(AppDbContext context)
        {
            _context = context;
        }

        // GET: api/<UserController>
        [HttpGet]
        public ActionResult Get()
        {
            try
            {
                return Ok(_context.User.ToList());
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [HttpGet("roles", Name = "getRoles")]
        public ActionResult getRoles()
        {
            try
            {
                return Ok(_context.Role.ToList());
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }


        [HttpGet("roles_usuario", Name = "getRolesUsuario")]
        public ActionResult getRolesUsuario()
        {
            try
            {
                return Ok(_context.User_Roles.ToList());
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        // GET api/<UserController>/5
        [HttpGet("{id}", Name = "User")]
        public ActionResult Get(int id)
        {
            try
            {
                var user = _context.User.FirstOrDefault(u => u.id == id);
                if (user == null)
                {
                    return NotFound();
                }
                return Ok(user);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        // POST api/<UserController>
        [HttpPost]
        public ActionResult Post([FromBody] User user)
        {
            try
            {
                // Generate password hash 
                var existingUser = _context.User.FirstOrDefault(u => u.name == user.name || u.email == user.email);
                if (existingUser != null)
                {
                    return BadRequest("Ya existe un usuario con el mismo nombre de usuario o correo electrónico.");
                }
                // Generate password hash 
                user.password = new PasswordHasher<User>().HashPassword(user, user.password);
                // Ensure that the Roles property is not null to avoid null reference exception
                _context.User.Add(user);
                _context.SaveChanges();

                var userRoles = new User_Roles { userId = user.id, roleId = 2 };
                _context.User_Roles.Add(userRoles);
                _context.SaveChanges();

                return Ok(user);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }



        [HttpPut("{id}")]
        public ActionResult Put(int id, [FromBody] User user)
        {
            try
            {
                if (user.id == id)
                {
                    _context.Entry(user).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
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



        // PUT api/<UserController>/5


        // DELETE api/<UserController>/5
        [HttpDelete("{id}")]
        public ActionResult Delete(int id)
        {
            try
            {
                var user = _context.User.FirstOrDefault(u => u.id == id);
                if (user != null)
                {
                    user.active = false;
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