using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace GraciousGiver_BackEnd.Models
{
    public class Fjalia
    {
        [Key]
        public int FjaliaId { get; set; }
        [Required]
        public String FjaliaName { get; set; }
    }
}
