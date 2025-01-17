﻿using Makrisoft.Makfi.Dal;
using Makrisoft.Makfi.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Windows;

namespace Makrisoft.Makfi.ViewModels
{
    public class UtilisateurViewModel : ViewModel<Utilisateur_VM, Utilisateur>
    {

        #region Constructeur
        public UtilisateurViewModel()
        {
            EtatType = EntiteEnum.None;
            SortDescriptions = new SortDescription[1] { new SortDescription("Nom", ListSortDirection.Ascending) };
            Loads = LoadEnum.None;
            Title = "Les utilisateurs";

            Init<Utilisateur>();
        }
        #endregion

        #region DgSource
        public override IEnumerable<Utilisateur_VM> DgSource_Read()
        {
            return new ObservableCollection<Utilisateur_VM>(
                MakfiData.Crud<Utilisateur>(
                   "Utilisateur_Read",
                   null,
                    e =>
                    {
                        e.Id = (Guid)MakfiData.Reader["Id"];
                        e.Nom = MakfiData.Reader["Nom"] as string;
                        e.CodePin = MakfiData.Reader["CodePin"] as string;
                        e.Statut = (RoleEnum)(byte)MakfiData.Reader["Statut"];
                    })
                .Select(x => new Utilisateur_VM
                {
                    Id = x.Id,
                    Nom = x.Nom,
                    Image = $"/Makrisoft.Makfi;component/Assets/Photos/{x.Nom.ToLower()}.png",
                    CodePin = x.CodePin,
                    Statut = x.Statut,
                    DateModified = default,
                    SaveColor = "Navy"
                }));
        }
        public override void DgSource_Save(string spName, string spParam)
        {
            base.DgSource_Save(
                "Utilisateur_Save",
                $@"<utilisateurs><utilisateur>
                        <id>{CurrentDgSource.Id}</id>
                        <nom>{CurrentDgSource.Nom}</nom>
                        <codePin>{CurrentDgSource.CodePin}</codePin>
                        <statut>{(byte)CurrentDgSource.Statut}</statut>
                    </utilisateur></utilisateurs>");
        }
        public override bool DgSource_Filter(object item)
        {
            if (item is Utilisateur_VM utilisateur)
            {
                return
                (FilterAdmin && utilisateur.Statut == RoleEnum.Admin) ||
                (FilterGouv && utilisateur.Statut == RoleEnum.Gouvernante) ||
                (FilterReception && utilisateur.Statut == RoleEnum.Reception);
            }
            return true;
        }

        #endregion

        #region Command
        public override void OnAddCommand()
        {
            CurrentDgSource = new Utilisateur_VM { Id = null, Nom = "(A définir)", Statut = RoleEnum.Gouvernante };
            DgSource.Add(CurrentDgSource);
        }
        public override void OnDeleteCommand(string spName, string spParam)
        {
            base.OnDeleteCommand(
                "Utilisateur_Delete",
                $"<utilisateurs><utilisateur><id>{CurrentDgSource.Id}</id></utilisateur></utilisateurs>");
        }
        public override bool OnCanExecuteDeleteCommand()
        {
            return CurrentDgSource != null &&
                (!CurrentDgSource.IsAdmin || (CurrentDgSource.IsAdmin && DgSource.Count(u => u.IsAdmin) > 1));
        }

        public override void OnFilterClearCommand()
        {
            FilterAdmin = FilterGouv = FilterReception = true;
        }
        #endregion

        #region Filter

        public bool FilterAdmin
        {
            get { return filterAdmin; }
            set
            {
                filterAdmin = value;
                OnPropertyChanged("FilterAdmin");
                DgSourceCollectionView.Refresh();
            }
        }
        protected bool filterAdmin = true;

        public bool FilterGouv
        {
            get { return filterGouv; }
            set
            {
                filterGouv = value;
                OnPropertyChanged("FilterGouv");
                DgSourceCollectionView.Refresh();
            }
        }
        protected bool filterGouv = true;

        public bool FilterReception
        {
            get { return filterReception; }
            set
            {
                filterReception = value;
                OnPropertyChanged("FilterReception");
                DgSourceCollectionView.Refresh();
            }
        }
        protected bool filterReception = true;
        #endregion

    }
}
