﻿using Makrisoft.Makfi.Dal;
using Makrisoft.Makfi.Models;
using Makrisoft.Makfi.Tools;
using System;
using System.Windows;
using System.Windows.Input;

namespace Makrisoft.Makfi.ViewModels
{
    public class LoginViewModel : ViewModelBase
    {
        #region Constructeur
        public LoginViewModel()
        {
            // ICommand
            LoginKeyCommand = new RelayCommand(p => OnLoginKeyCommand(p));
        }
        #endregion

        #region Binding
        public string Password { get { return password; } set { password = value; OnPropertyChanged("Password"); } }
        private string password = "";
        #endregion

        #region ICommand
        // ICommand
        public ICommand LoginKeyCommand { get; set; }

        // Méthode
        private void OnLoginKeyCommand(object key)
        {
 
 
            Password += key.ToString();
            if (Password.Length == 4)
            {
#if PASSEDROIT
                //Password = "#69!";
#endif
                if (Reference_ViewModel.Header.Message == "Tapez votre code pin" || Reference_ViewModel.Header.Message == "Nouveau code pin")
                {
                    Reference_ViewModel.Header.CurrentUtilisateur.CodePin = Password;
                    var param = $@"<utilisateurs><utilisateur>
                                    <id>{Reference_ViewModel.Header.CurrentUtilisateur.Id}</id>
                                    <nom>{Reference_ViewModel.Header.CurrentUtilisateur.Nom}</nom>
                                    <codePin>{Reference_ViewModel.Header.CurrentUtilisateur.CodePin}</codePin>
                                    <statut>{(byte)Reference_ViewModel.Header.CurrentUtilisateur.Statut}</statut>
                                </utilisateur></utilisateurs>";
                    var ids = MakfiData.Crud<Utilisateur>("Utilisateur_Save", param);
                    if (ids.Count == 0) throw new Exception("Rien n'a été sauvgardé ! ");
                    Reference_ViewModel.Header.Message = "";
                }
                 
                if (password == MakfiData.PasswordChange && Reference_ViewModel.Header.CurrentUtilisateur.Statut == RoleEnum.Gouvernante)
                {
                    Reference_ViewModel.Header.MessagerieVisibility = Visibility.Hidden;
                    Reference_ViewModel.Header.Message = "Nouveau code pin";
                    password = "";
                }
                else
                {
                    if (Password == Reference_ViewModel.Header.CurrentUtilisateur.CodePin)
                    {
                        Reference_ViewModel.Main.ViewSelected = ViewEnum.Home;
                        Reference_ViewModel.Header.CanChangeUtilisateur = false;
                        Reference_ViewModel.Home.IsAdmin = Reference_ViewModel.Header.CurrentUtilisateur.IsAdmin;
                        Reference_ViewModel.Header.MenuVisibility = Visibility.Visible;
                    }
                    Password = "";
                    if (Reference_ViewModel.Header.CurrentHotel != null) 
                    {
                        //Reference_ViewModel.Employe.Load_Employes();
                        //Reference_ViewModel.Chambre.Load_Chambres();
                    }
                }
            }
        }


        #endregion

        #region Load
        public override void Load()
        {
            base.Load();
            Reference_ViewModel.Header.Load_Utilisateur();
        }
        #endregion
    }
}
