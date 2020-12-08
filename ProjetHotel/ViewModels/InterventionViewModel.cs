﻿using Makrisoft.Makfi.Dal;
using Makrisoft.Makfi.Tools;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Data;
using System.Windows.Input;

namespace Makrisoft.Makfi.ViewModels
{
    public class InterventionViewModel : ViewModelBase
    {
        #region Constructeur
        public InterventionViewModel()
        {
            // Icommand
            InterventionModifiedSaveCommand = new RelayCommand(p => OnSaveCommand(), p => OnCanExecuteSaveCommand());
            InterventionSelectedAddCommand = new RelayCommand(p => OnAddCommand(), p => true);
            InterventionSelectedDeleteCommand = new RelayCommand(p => OnDeleteCommand(), p => OnCanExecuteDeleteCommand());
            FilterClearCommand = new RelayCommand(p => OnFilterEtatClearCommand(), p => OnCanExecuteFilterEtatClearCommand());
            InterventionDetailChange = new RelayCommand(p => OnInterventionDetailChange(), p => OnCanExecuteInterventionDetailChange());
            // ListeView
            if (Reference_ViewModel.Header.CurrentHotel != null)
            {
                Load_Etat();
                Load_EtatIntervention();
                Load_Intervention();
            }
            //
            GroupeChambreCollectionView = Reference_ViewModel.ChambreGroupe.GroupeChambreCollectionView;
        }

        private bool OnCanExecuteInterventionDetailChange()
        {
            if (CurrentIntervention != null) return true;
            else return false;
        }

        private void OnInterventionDetailChange()
        {
            if (Reference_ViewModel.InterventionDetail != null)
            {
                Reference_ViewModel.InterventionDetail.Load_InterventionDetail();
                Reference_ViewModel.InterventionDetail.CurrentIntervention = CurrentIntervention;
            }
            Reference_ViewModel.Main.ViewSelected = ViewEnum.InterventionDetail;
            RevienIci = true;
        }

        #endregion

        #region Binding

        //Intervention
        public ObservableCollection<Intervention_VM> Interventions
        {
            get { return interventions; }
            set { interventions = value; OnPropertyChanged("Interventions"); }
        }
        private ObservableCollection<Intervention_VM> interventions;
        public Intervention_VM CurrentIntervention
        {
            get { return currentIntervention; }
            set
            {
                currentIntervention = value;
                if (currentIntervention == null) IsEnabled = false;
                else IsEnabled = true;
                OnPropertyChanged("CurrentIntervention");
            }
        }
        private Intervention_VM currentIntervention;
        public ListCollectionView InterventionCollectionView
        {
            get { return interventionCollectionView; }
            set { interventionCollectionView = value; OnPropertyChanged("InterventionCollectionView"); }
        }
        private ListCollectionView interventionCollectionView;

        //IsEnabled
        public bool IsEnabled
        {
            get { return isEnabled; }
            set
            {
                isEnabled = value;
                OnPropertyChanged("IsEnabled");
            }
        }
        private bool isEnabled;

        //Etat
        public ObservableCollection<Etat_VM> EtatList
        {
            get { return etatList; }
            set
            {
                etatList = value;
                OnPropertyChanged("EtatList");
            }
        }
        private ObservableCollection<Etat_VM> etatList;
        public ListCollectionView EtatListCollectionView
        {
            get { return etatListCollectionView; }
            set { etatListCollectionView = value; OnPropertyChanged("EtatListCollectionView"); }
        }
        private ListCollectionView etatListCollectionView;

        //EtatIntervention
        public ObservableCollection<Etat_VM> EtatIntervention
        {
            get { return etatIntervention; }
            set
            {
                etatIntervention = value;
                OnPropertyChanged("EtatIntervention");
            }
        }
        private ObservableCollection<Etat_VM> etatIntervention;
        public ListCollectionView EtatInterventionCollectionView
        {
            get { return etatInterventionCollectionView; }
            set { etatInterventionCollectionView = value; OnPropertyChanged("EtatInterventionCollectionView"); }
        }
        private ListCollectionView etatInterventionCollectionView;

        //Filter
        public Etat_VM CurrentFilterEtat
        {
            get { return currentFilterEtat; }
            set
            {
                currentFilterEtat = value;
                if (InterventionCollectionView != null)
                    InterventionCollectionView.Filter = FilterChambres;
                OnPropertyChanged("CurrentFilterEtat");
            }
        }
        private Etat_VM currentFilterEtat;
        public DateTime? CurrentFilterDateDebutSelected
        {
            get { return currentFilterDateDebutSelected; }
            set
            {
                currentFilterDateDebutSelected = value;
                if (InterventionCollectionView != null)
                    InterventionCollectionView.Filter = FilterChambres;
                OnPropertyChanged("CurrentFilterDateDebutSelected");
            }
        }
        private DateTime? currentFilterDateDebutSelected;
        public DateTime? CurrentFilterDateFinSelected
        {
            get { return currentFilterDateFinSelected; }
            set
            {
                currentFilterDateFinSelected = value;
                if (InterventionCollectionView != null)
                    InterventionCollectionView.Filter = FilterChambres;
                OnPropertyChanged("CurrentFilterDateFinSelected");
            }
        }
        private DateTime? currentFilterDateFinSelected;

        //GroupeChambres
        public ListCollectionView GroupeChambreCollectionView
        {
            get { return groupeChambreCollectionView; }
            set { groupeChambreCollectionView = value; OnPropertyChanged("GroupeChambreCollectionView"); }
        }
        private ListCollectionView groupeChambreCollectionView;

        //Retour à cette page; 
        public bool RevienIci = false;
        #endregion

        #region Commands
        //ICommand
        public ICommand InterventionModifiedSaveCommand { get; set; }
        public ICommand InterventionSelectedAddCommand { get; set; }
        public ICommand InterventionSelectedDeleteCommand { get; set; }
        public ICommand FilterClearCommand { get; set; }
        public ICommand InterventionDetailChange { get; set; }

        // Méthodes OnCommand
        private void OnSaveCommand()
        {
            if (Reference_ViewModel.Header.CurrentHotel == null)
            {
                MessageBox.Show($"Aucun hôtel ne vous a été assigné  ", "Impossible d'enregistrer  !");
                Interventions.Remove(CurrentIntervention);
                return;
            }
            if (CurrentIntervention.Libelle == "")
            {
                MessageBox.Show($"Impossible de sauvgarder cette intervention !", "Remarque !");
                return;
            }
            Guid? monID = null;
            if (CurrentIntervention.Id != default) monID = CurrentIntervention.Id;
            string libelle = null;
            if (!CurrentIntervention.Libelle.Contains("Intervention du")) libelle = CurrentIntervention.Libelle;
            var param = $@"
                    <intervention>
                        <id>{monID}</id>
                        <libelle>{libelle}</libelle>
                        <commentaire>{CurrentIntervention.Commentaire}</commentaire>    
						<hotel>{Reference_ViewModel.Header.CurrentHotel.Id}</hotel>
                        <date1>{CurrentIntervention.Date1}</date1>    
                        <model>{currentIntervention.Model}</model>   
                        <etat>{currentIntervention.Etat.Id}</etat> 
                     </intervention>";
            var ids = MakfiData.Intervention_Save(param);
            if (ids.Count == 0) throw new Exception("Rien n'a été sauvgardé ! ");
            CurrentIntervention.Id = ids[0].Id;

            if (CurrentIntervention.Etat == null)
                CurrentIntervention.Etat = EtatIntervention.Where(e => e.Libelle == "Aucune information !").SingleOrDefault();
            CurrentIntervention.SaveColor = "Navy";
            InterventionCollectionView.Refresh();
            //CurrentIntervention = Interventions.Where(i => i.Id == ids[0].Id).SingleOrDefault();
        }
        private void OnAddCommand()
        {
            CurrentIntervention = new Intervention_VM
            {
                Date1 = DateTime.Now,
                Etat = EtatIntervention.Where(e => e.Libelle == "None").SingleOrDefault(),
                Model = true
            };
            Interventions.Add(CurrentIntervention);
        }
        private void OnDeleteCommand()
        {

            var canDeletes = MakfiData.Intervention_CanDelete($"<intervention><id>{CurrentIntervention.Id}</id></intervention>");
            if (canDeletes.Count() == 0)
            {
                var param = MakfiData.Intervention_Delete($"<intervention><id>{CurrentIntervention.Id}</id></intervention>");
                if (param) Interventions.Remove(CurrentIntervention);
            }
            else
                MessageBox.Show($" Suppression impossible de l'intervention: {CurrentIntervention.Libelle }", "Remarque !");
        }
        private void OnFilterEtatClearCommand()
        {
            CurrentFilterEtat = null;
            CurrentFilterDateDebutSelected = null;
            CurrentFilterDateFinSelected = null;
        }

        // Méthodes OnCanExecuteCommand
        private bool OnCanExecuteSaveCommand()
        {
            if (CurrentIntervention != null) return true;
            else return false;
        }
        private bool OnCanExecuteDeleteCommand()
        {
            if (CurrentIntervention == null) return false;
            else return true;
        }
        private bool OnCanExecuteFilterEtatClearCommand()
        {
            if (CurrentFilterEtat != null || CurrentFilterDateDebutSelected != null || CurrentFilterDateFinSelected != null) return true;
            else return false;
        }
        //Filter 
        public bool FilterChambres(object item)
        {
            if (CurrentFilterDateDebutSelected != null && CurrentFilterDateFinSelected != null && CurrentFilterEtat != null)
            {
                if (item is Intervention_VM intervention)
                    return intervention.Date1 >= CurrentFilterDateDebutSelected &&
                       intervention.Date1 <= CurrentFilterDateFinSelected &&
                       EtatIntervention.Any(e => intervention.Etat.Libelle == CurrentFilterEtat.Libelle);
            }
            if (CurrentFilterDateDebutSelected != null && CurrentFilterDateFinSelected != null)
            {
                if (item is Intervention_VM intervention)
                    return intervention.Date1 >= CurrentFilterDateDebutSelected && intervention.Date1 <= CurrentFilterDateFinSelected;
                return false;
            }
            if (CurrentFilterDateDebutSelected != null && CurrentFilterEtat != null)
            {
                if (item is Intervention_VM intervention)
                    return intervention.Date1 >= CurrentFilterDateDebutSelected &&
                       EtatIntervention.Any(e => intervention.Etat.Libelle == CurrentFilterEtat.Libelle);
            }
            if (CurrentFilterDateFinSelected != null && CurrentFilterEtat != null)
            {
                if (item is Intervention_VM intervention)
                    return intervention.Date1 <= CurrentFilterDateFinSelected &&
                       EtatIntervention.Any(e => intervention.Etat.Libelle == CurrentFilterEtat.Libelle);
            }
            if (CurrentFilterDateFinSelected != null)
            {
                if (item is Intervention_VM intervention)
                    return intervention.Date1 <= CurrentFilterDateFinSelected;
            }
            if (CurrentFilterDateDebutSelected != null)
            {
                if (item is Intervention_VM intervention)
                    return intervention.Date1 >= CurrentFilterDateDebutSelected;
            }
            if (CurrentFilterEtat != null)
            {
                if (item is Intervention_VM intervention)
                    return EtatIntervention.Any(e => intervention.Etat.Libelle == CurrentFilterEtat.Libelle);
                return false;
            }
            return true;

        }

        #endregion

        #region Load
        public void Load_Intervention()
        {
            if (Reference_ViewModel.Header.CurrentHotel == null)
            {
                if (Interventions != null) Interventions.Clear();
                MessageBox.Show($"Aucun hôtel ne vous a été assigné  ", "Impossible d'enregistrer  !");
                return;
            }
            Guid monId = default;
            if (Reference_ViewModel.Header.CurrentHotel != null)
                monId = Reference_ViewModel.Header.CurrentHotel.Id;

            Interventions = new ObservableCollection<Intervention_VM>(
               MakfiData.Intervention_Read($"<intervention><hotel>{monId}</hotel></intervention>")
               .Select(x => new Intervention_VM
               {
                   Id = x.Id,
                   Libelle = "Intervention du " + x.Date1,
                   Etat = EtatIntervention.Where(e => e.Id == x.Etat).SingleOrDefault(),
                   Date1 = x.Date1,
                   Commentaire = x.Commentaire,
                   Model = x.Model,
                   SaveColor = "Navy"
               }).OrderBy(x => x.Libelle).ToList());
            InterventionCollectionView = new ListCollectionView(Interventions);
            InterventionCollectionView.Refresh();
            if (Interventions.Count > 0) CurrentIntervention = Interventions[0];
            CurrentFilterEtat = null;
            CurrentFilterDateDebutSelected = null;
            CurrentFilterDateFinSelected = null;
        }
        private void Load_Etat()
        {
            EtatList = new ObservableCollection<Etat_VM>(
              MakfiData.Etat_Read()
              .Select(x => new Etat_VM
              {
                  Id = x.Id,
                  Libelle = x.Libelle,
                  Icone = x.Icone,
                  Couleur = x.Couleur,
                  Entite = x.Entite
              }).ToList()); ;
            EtatListCollectionView = new ListCollectionView(EtatList);
            EtatListCollectionView.Refresh();
        }
        private void Load_EtatIntervention()
        {
            EtatIntervention = new ObservableCollection<Etat_VM>(
               EtatList.Where(x => x.Entite == EntiteEnum.Intervention).ToList());
            EtatInterventionCollectionView = new ListCollectionView(EtatIntervention);
            EtatInterventionCollectionView.Refresh();
        }
        #endregion
    }
}
