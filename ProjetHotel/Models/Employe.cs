﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Makrisoft.Makfi.Models
{
    class Employe
    {
        public Guid Id { get; set; }
        public Etat Etat { get; set; }
        public string Nom { get; set; }
        public string Prenom { get; set; }
        public string Commentaire { get; set; }
    }
}
