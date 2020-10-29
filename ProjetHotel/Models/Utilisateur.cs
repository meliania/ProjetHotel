﻿using Makrisoft.Makfi.Dal;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Makrisoft.Makfi.Models
{
    public class Utilisateur 
    {
        public Guid Id;
        public string Nom;
        public Guid Gouvernante;
        public string Image;
        public string CodePin;

        public byte Statut;
        public RoleEnum Role { get; set; }

    }
}
