using LuxuryRest.Context;
using LuxuryRest.Model;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Security.Cryptography;
using System.Text;

namespace LuxuryRest.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LoginController : ControllerBase
    {
        private readonly AppDbContext _context;

        public LoginController(AppDbContext context)
        {
            _context = context;
        }

        [HttpPost]
        public async Task<IActionResult> Login([FromBody] User loginRequest)
        {
            try
            {
                var user = await _context.User
                    .FirstOrDefaultAsync(u => u.email == loginRequest.email && u.active);

                if (user == null)
                {
                    return NotFound("Usuario no encontrado o inactivo.");
                }

                if (!VerifyPasswordHash(loginRequest.password, user.password))
                {
                    return BadRequest("Credenciales incorrectas.");
                }

                var roles = await GetUserRole(user.id);
                var token = GenerateJwtToken(user, roles);
                return Ok(new { Token = token, Role = roles });
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        // Helper method to generate a JWT token for the authenticated user
        private string GenerateJwtToken(User user, string roles)
        {
            var tokenHandler = new JwtSecurityTokenHandler();
            var key = Encoding.ASCII.GetBytes("YourSecretKeyHere"); // Replace with your secret key
            var tokenDescriptor = new SecurityTokenDescriptor
            {
                Subject = new ClaimsIdentity(new[]
                {
                    new Claim(ClaimTypes.Name, user.id.ToString()),
                    new Claim(ClaimTypes.Email, user.email),
                    // You can add more claims here as needed, e.g., roles, permissions, etc.
                    new Claim(ClaimTypes.Role, string.Join(",", roles))
                }),
                Expires = DateTime.UtcNow.AddDays(7), // Token expiration time
                SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha256Signature)
            };
            var token = tokenHandler.CreateToken(tokenDescriptor);
            return tokenHandler.WriteToken(token);
        }

        // Helper method to verify the password hash for login
        private bool VerifyPasswordHash(string password, string storedHash)
        {
            using (SHA256 sha256 = SHA256.Create())
            {
                byte[] passwordBytes = Encoding.UTF8.GetBytes(password);
                byte[] hashedPasswordBytes = sha256.ComputeHash(passwordBytes);
                string hashedPassword = Convert.ToBase64String(hashedPasswordBytes);

                return storedHash == hashedPassword;
            }
        }


        // Helper method to get roles of a user
        private async Task<string> GetUserRole(int userId)
        {
            var roleId = await _context.User_Roles
                .Where(ur => ur.userId == userId)
                .Select(ur => ur.roleId)
                .FirstOrDefaultAsync();

            if (roleId != 0) // Cambia esta condición a roleId != 0
            {
                var role = await _context.Role
                    .Where(r => r.id == roleId)
                    .Select(r => r.name)
                    .FirstOrDefaultAsync();

                return role;
            }

            return null; // El usuario no tiene roles asignados
        }

    }
}