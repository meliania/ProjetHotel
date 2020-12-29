﻿using Makrisoft.Makfi.Dal;
using Makrisoft.Makfi.Tools;
using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Timers;
using System.Windows;
using System.Windows.Data;
using System.Windows.Input;

namespace Makrisoft.Makfi.ViewModels
{
    public class HeaderViewModel : ViewModelBase
    {
        #region Constructeur
        public HeaderViewModel()
        {
            // ICommand
            DeconnectCommand = new RelayCommand(p => OnDeconnectCommand(), p => OnCanExecuteDeconnectCommand());
            BackCommand = new RelayCommand(p => OnBackCommand(), p => OnCanExecuteBackCommand());
            MessageDisplayAllCommand = new RelayCommand(p => OnMessageDisplayAllCommand(), p => OnCanExecuteMessageDisplayAllCommand());

            // Utilisateur
            Utilisateur_Load();

            // Horloge
            HeaderTimer.Elapsed += (s, e) => HorlogeLoop();
            HeaderTimer.Start();

            //Menuvisibility
            MenuVisibility = Visibility.Hidden;

            //Messages
 
        }
        #endregion

        #region Bindings
        // Utilisateur
        public ObservableCollection<Utilisateur_VM> Utilisateurs
        {
            get { return utilisateurs; }
            set
            {
                utilisateurs = value;
                OnPropertyChanged("Utilisateurs");

            }
        }
        private ObservableCollection<Utilisateur_VM> utilisateurs;
        public Utilisateur_VM CurrentUtilisateur
        {
            get
            {
                return
                  currentUtilisateur;
            }
            set
            {
                currentUtilisateur = value;
                Message = "";
                Guid monID = default;
                if (currentUtilisateur == null) return;
                monID = currentUtilisateur.Id;

                if (currentUtilisateur.IsAdmin)
                {
                    Hotels = new ObservableCollection<Hotel_VM>(
                       MakfiData.Hotel_Read()
                      .Select(x => new Hotel_VM
                      {
                          Id = x.Id,
                          Nom = x.Nom,
                          Image = $"/Makrisoft.Makfi;component/Assets/hotels/{x.Nom.ToLower()}.png",
                          Gouvernante = Utilisateurs.Where(u => u.Id == x.Gouvernante).SingleOrDefault()
                      }));
                }
                else
                {
                    // Hotel
                    Hotels = new ObservableCollection<Hotel_VM>(
                        MakfiData.Hotel_Read($"<hotel><gouvernante>{monID}</gouvernante></hotel>")
                       .Select(x => new Hotel_VM
                       {
                           Id = x.Id,
                           Nom = x.Nom,
                           Image = $"/Makrisoft.Makfi;component/Assets/hotels/{x.Nom.ToLower()}.png",
                           Gouvernante = Utilisateurs.Where(u => u.Id == x.Gouvernante).SingleOrDefault()
                       }));
                }
                CurrentHotel = Hotels.FirstOrDefault();
                if (Reference_ViewModel.Message != null)
                {
                    Reference_ViewModel.Message.Load_Message();
                    MessagesCollectionView = new ListCollectionView(Reference_ViewModel.Message.Messages);
                    MessagesCollectionView.SortDescriptions.Add(new System.ComponentModel.SortDescription("DateCreation", System.ComponentModel.ListSortDirection.Descending));

                }
                if (string.IsNullOrEmpty(currentUtilisateur.CodePin))
                {
                    Reference_ViewModel.Header.messagerieVisibility = Visibility.Hidden;
                    Message = "Tapez votre code pin";
                }
                
                OnPropertyChanged("CurrentUtilisateur");
            }
        }
        private Utilisateur_VM currentUtilisateur;
        public bool CanChangeUtilisateur
        {
            get { return canChangeUtilisateur; }
            set
            {
                canChangeUtilisateur = value;
                OnPropertyChanged("CanChangeUtilisateur");
            }
        }
        private bool canChangeUtilisateur = true;

        // Hotel
        public ObservableCollection<Hotel_VM> Hotels
        {
            get { return hotels; }
            set
            {
                hotels = value;
                OnPropertyChanged("Hotels");
            }
        }
        private ObservableCollection<Hotel_VM> hotels;
        public Hotel_VM CurrentHotel
        {
            get
            {
                return
                  currentHotel;
            }
            set
            {
                currentHotel = value;
                OnPropertyChanged("CurrentHotel");
            }
        }
        private Hotel_VM currentHotel;

        //PremiereConnexion
        public string Message
        {
            get { return premiereConnexion; }
            set
            {
                premiereConnexion = value;
                OnPropertyChanged("Message");
            }
        }
        private string premiereConnexion;

        //View 
        public ViewEnum LastView { get; set; }
        public Visibility MenuVisibility
        {
            get { return menuVisibility; }
            set
            {
                menuVisibility = value;
                OnPropertyChanged("MenuVisibility");
            }
        }
        private Visibility menuVisibility;

        // Horloge
        public DateTime Horloge
        {
            get { return horloge; }
            set
            {
                horloge = value;
                OnPropertyChanged("Horloge");
            }
        }
        private DateTime horloge = DateTime.Now;

        //Messages 
        
        public ListCollectionView MessagesCollectionView
        {
            get { return messagesCollectionView; }
            set
            {
                messagesCollectionView = value;
                OnPropertyChanged("MessagesCollectionView");
            }
        }
        private ListCollectionView messagesCollectionView;
        public Visibility MessagesVisibility
        {
            get { return messagesVisibility; }
            set
            {
                messagesVisibility = value;
                OnPropertyChanged("MessagesVisibility");
            }
        }
        private Visibility messagesVisibility = Visibility.Visible;

        public Message_VM CurrentMessage
        {
            get { return currentMessage; }
            set
            {
                currentMessage = value;
                OnPropertyChanged("CurrentMessage");
            }
        }
        private Message_VM currentMessage;
        public Visibility MessagerieVisibility
        {
            get { return messagerieVisibility; }
            set
            {
                messagerieVisibility = value;
                OnPropertyChanged("MessagerieVisibility");
            }
        }
        private Visibility messagerieVisibility = Visibility.Visible;

        #endregion

        #region Command
        // ICommand
        public ICommand DeconnectCommand { get; set; }
        public ICommand BackCommand { get; set; }
        public ICommand MessageDisplayAllCommand { get; set; }

        // Méthode
        private void OnBackCommand()
        {
            switch (Reference_ViewModel.Main.ViewSelected)
            {
                case ViewEnum.Administration:
                    Reference_ViewModel.Main.ViewSelected = Dal.ViewEnum.Home;
                    break;

                case ViewEnum.Utilisateur:
                    Reference_ViewModel.Main.ViewSelected = Dal.ViewEnum.Administration;
                    break;

                case ViewEnum.Hotel:
                    Reference_ViewModel.Main.ViewSelected = Dal.ViewEnum.Administration;
                    break;

                case ViewEnum.Employe:
                    //Reference_ViewModel.InterventionDetail.Load_DgSource(); // AM : 20201228
                    Reference_ViewModel.Main.ViewSelected = Dal.ViewEnum.Home;
                    break;
                case ViewEnum.Chambre:
                    //Reference_ViewModel.InterventionDetail.Load_DgSource(); // AM : 20201228
                    Reference_ViewModel.Main.ViewSelected = Dal.ViewEnum.Home;
                    break;
                case ViewEnum.ChambreGroupe:
                    Reference_ViewModel.Main.ViewSelected = Dal.ViewEnum.Chambre;
                    break;
                case ViewEnum.Intervention:
                    Reference_ViewModel.Home.ButtonInterventionDuJour();
                    Reference_ViewModel.Main.ViewSelected = Dal.ViewEnum.Home;
                    break;
                case ViewEnum.InterventionDetail:

                    /********mettre à jour l'etat de l'intervention dans la base de données********/
              //      Guid? monID = null;
              //      if (Reference_ViewModel.Intervention.CurrentDgSource.Id != default) monID = Reference_ViewModel.Intervention.CurrentDgSource.Id;
              //      var param = $@"
              //              <intervention>
              //                  <id>{monID}</id>
              //                  <libelle>{Reference_ViewModel.Intervention.CurrentDgSource.Libelle}</libelle>
              //                  <commentaire>{Reference_ViewModel.Intervention.CurrentDgSource.Commentaire}</commentaire>    
						        //<hotel>{Reference_ViewModel.Header.CurrentHotel.Id}</hotel>
              //                  <date1>{Reference_ViewModel.Intervention.CurrentDgSource.Date1}</date1>    
              //                  <model>{Reference_ViewModel.Intervention.CurrentDgSource.Model}</model>   
              //                  <etat>{Reference_ViewModel.InterventionDetail.GetSommeEtats().Id}</etat> 
              //               </intervention>";
              //      var ids = MakfiData.Intervention_Save(param);
              //      if (ids.Count == 0) throw new Exception("Rien n'a été sauvgardé ! ");
                    /************************************************************************/
                    if (Reference_ViewModel.Intervention.RevientIci == true)
                    {
                        Reference_ViewModel.Main.ViewSelected = Dal.ViewEnum.Intervention;
                        Reference_ViewModel.Intervention.RevientIci = false;
                    }
                    else
                    {
                        Reference_ViewModel.Home.ButtonInterventionDuJour();
                        Reference_ViewModel.Main.ViewSelected = Dal.ViewEnum.Home;
                    }
                    break;
                case ViewEnum.InterventionAjouter:
                    Reference_ViewModel.Main.ViewSelected = Dal.ViewEnum.InterventionDetail;
                    break;
                //case ViewEnum.InterventionSupprimer:
                //    Reference_ViewModel.InterventionSupprimer.OnSupprimerParBloc();
                //    Reference_ViewModel.Main.ViewSelected = Dal.ViewEnum.InterventionDetail;
                //    break;
                case ViewEnum.Message:
                    MessagesVisibility = Visibility.Visible;

                    Reference_ViewModel.Main.ViewSelected = LastView;
                    break;
                case ViewEnum.Parametre:
                    Reference_ViewModel.Main.ViewSelected = ViewEnum.Administration;
                    break;
            }
        }
        private void OnDeconnectCommand()
        {
            Reference_ViewModel.Main.ViewSelected = ViewEnum.Login;
            CurrentUtilisateur = Utilisateurs.FirstOrDefault(g => g.Nom == Properties.Settings.Default.Login);
            CanChangeUtilisateur = true;
            MenuVisibility = Visibility.Hidden;
            MessagesVisibility = Visibility.Visible;

        }
        private void OnMessageDisplayAllCommand()
        {
            MessagesVisibility = Visibility.Collapsed;
            LastView = Reference_ViewModel.Main.ViewSelected;
            Reference_ViewModel.Main.ViewSelected = ViewEnum.Message;
        }

        //Méthode on canExcute

        private bool OnCanExecuteMessageDisplayAllCommand()
        {
            return Reference_ViewModel.Main.ViewSelected != ViewEnum.Login;
        }
        private bool OnCanExecuteBackCommand()
        {
            if (Reference_ViewModel.Main.ViewSelected == ViewEnum.InterventionDetail)
                return !Reference_ViewModel.InterventionDetail.OnCanExecuteSaveAllCommand();

            if (Reference_ViewModel.Main.ViewSelected == ViewEnum.Intervention)
                return !Reference_ViewModel.Intervention.DgSource.Any(x => x.SaveColor == "Red");

            if (Reference_ViewModel.Main.ViewSelected == ViewEnum.Employe)
                return !Reference_ViewModel.Employe.Employes.Any(x => x.SaveColor == "Red");

            if (Reference_ViewModel.Main.ViewSelected == ViewEnum.Chambre)
                return !Reference_ViewModel.Chambre.ChambreGroupeChambre.Any(x => x.SaveColor == "Red");

            if (Reference_ViewModel.Main.ViewSelected == ViewEnum.ChambreGroupe)
                return !Reference_ViewModel.ChambreGroupe.Etages.Any(x => x.SaveColor == "Red");

            if (Reference_ViewModel.Main.ViewSelected == ViewEnum.Home ||
                Reference_ViewModel.Main.ViewSelected == ViewEnum.Login)
                return false;
            else return true;
        }
        private bool OnCanExecuteDeconnectCommand()
        {
            return Reference_ViewModel.Main.ViewSelected != ViewEnum.Login;
        }
        #endregion

        #region Propriété
        private readonly Timer HeaderTimer = new Timer(10000);

        #endregion

        #region Load
        public void Utilisateur_Load()
        {
            Utilisateurs = new ObservableCollection<Utilisateur_VM>(
               MakfiData.Utilisateur_Read()
               .Where(x => x.Statut == RoleEnum.Admin || x.Statut == RoleEnum.Gouvernante)
               .Select(x => new Utilisateur_VM
               {
                   Id = x.Id,
                   Nom = x.Nom,
                   CodePin = x.CodePin,
                   Image = $"/Makrisoft.Makfi;component/Assets/Photos/{x.Nom.ToLower()}.png",
                   Statut = x.Statut,
                   SaveColor = "Navy"
               }));
            if (Utilisateurs.Count == 1) CurrentUtilisateur = Utilisateurs[0];
            if (CurrentUtilisateur == null)
                CurrentUtilisateur = Utilisateurs.FirstOrDefault(g => g.Nom.ToUpper() == Properties.Settings.Default.Login.ToUpper());
            if (CurrentUtilisateur == null) CurrentUtilisateur = Utilisateurs.FirstOrDefault(u => u.Statut == RoleEnum.Gouvernante);
            if (CurrentUtilisateur == null) CurrentUtilisateur = Utilisateurs.FirstOrDefault();


        }
        #endregion

        #region Divers


        private void HorlogeLoop()
        {
            // Horloge
            Horloge = DateTime.Now;
        }
        #endregion
    }
}
