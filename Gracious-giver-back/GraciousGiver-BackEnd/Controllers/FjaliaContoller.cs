using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using GraciousGiver_BackEnd.Data;
using GraciousGiver_BackEnd.Models;

namespace GraciousGiver_BackEnd.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class FjaliaController : ControllerBase
    {
        private readonly GraciousDbContext _context;

        public FjaliaController(GraciousDbContext context)
        {
            _context = context;
        }

        // GET: api/Fjalia
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Fjalia>>> GetFjalia()
        {
            return await _context.Fjalia.ToListAsync();
        }

        // GET: api/Fjalia/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Fjalia>> GetFjalia(int id)
        {
            var prod = await _context.Fjalia.FindAsync(id);

            if (prod == null)
            {
                return NotFound();
            }

            return prod;
        }

        //amount
        [HttpGet("{amount}/{nr}")]
        public async Task<ActionResult<IEnumerable<Fjalia>>> GetStateByAmount(int nr)
        {
            return await _context.Fjalia.Take(nr).ToListAsync();
        }

        // PUT: api/Fjalia/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutFjalia(int id, Fjalia prod)
        {
            if (id != prod.FjaliaId)
            {
                return BadRequest();
            }
            if (ModelState.IsValid)
            {
                _context.Entry(prod).State = EntityState.Modified;

                try
                {
                    await _context.SaveChangesAsync();

                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!FjaliaExists(id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }

                return new JsonResult("Fjalia Updated Succesfully!");
            }
            return new JsonResult("Invalid state data!");
        }

        // POST: api/Fjalia
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<Fjalia>> PostFjalia(Fjalia prod)
        {
            if (ModelState.IsValid)
            {
                _context.Fjalia.Add(prod);
                await _context.SaveChangesAsync();

                return CreatedAtAction("GetFjalia", new { id = prod.FjaliaId }, prod);

            }
            return new JsonResult("Invalid state data!");
        }
        // DELETE: api/Fjalia/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<Fjalia>> DeleteFjalia(int id)
        {
            var prod = await _context.Fjalia.FindAsync(id);
            if (prod == null)
            {
                return NotFound();
            }

            _context.Fjalia.Remove(prod);
            await _context.SaveChangesAsync();

            return new JsonResult("Fjalia Deleted  Succesfully!");
        }

        private bool FjaliaExists(int id)
        {
            return _context.Fjalia.Any(e => e.FjaliaId == id);
        }
    }
}