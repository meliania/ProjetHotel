﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Makrisoft.Makfi.Models
{
    public class InterventionDetail : Modele
    {
        public Employe Employe;
        public Chambre Chambre;
        public string Commentaire;
        public Guid Etat;
    }
}
