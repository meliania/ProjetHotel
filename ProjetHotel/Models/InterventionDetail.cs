﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Makrisoft.Makfi.Models
{
    public class InterventionDetail
    {
        public Guid Id;

        public Guid Employe
        {
            get { return employe; }
            set
            {
                employe = value;
            }
        }
        private Guid employe;

        public Guid Chambre
        {
            get { return chambre; }
            set
            {
                chambre = value;
            }
        }
        private Guid chambre;

        public string Commentaire
        {
            get { return commentaire; }
            set
            {
                commentaire = value;
            }
        }
        private string commentaire;

        public Guid Etat
        {
            get { return etat; }
            set
            {
                etat = value;
            }
        }
        private Guid etat;

    }
}