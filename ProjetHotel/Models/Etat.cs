﻿using Makrisoft.Makfi.Dal;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Makrisoft.Makfi.Models
{
    public class Etat : Modele
    {
        public string Libelle;
        public string Icone;
        public string Couleur;
        public EntiteEnum Entite;
        public Boolean EtatEtat;
    }
}
