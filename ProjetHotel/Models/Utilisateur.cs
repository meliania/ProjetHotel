﻿using Makrisoft.Makfi.Dal;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Makrisoft.Makfi.Models
{
    public class Utilisateur : Modele
    {
        public string Nom;
        public Guid Gouvernante;
        public string CodePin;
        public RoleEnum Statut;
    }
}
