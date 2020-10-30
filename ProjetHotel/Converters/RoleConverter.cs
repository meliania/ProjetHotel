﻿using Makrisoft.Makfi.Dal;
using Makrisoft.Makfi.Models;
using Makrisoft.Makfi.ViewModels;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;
using System.Windows.Media;

namespace Makrisoft.Makfi.Converters
{
    public class RoleConverter : IValueConverter
    {

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value == null) return null;
            var utilisateur = (Utilisateur_VM)value;
            if (((RoleEnum)parameter & utilisateur.Statut) == (RoleEnum)parameter)
                switch ((RoleEnum)parameter)
                {
                    case RoleEnum.Admin: return "Person";
                    case RoleEnum.Gouvernante: return "FaceWoman";
                    case RoleEnum.Reception: return "Building";
                }
            return "None";
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
    public class RoleColorConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value == null) return null;
            var utilisateur = (Utilisateur_VM)value;
            switch ((RoleEnum)parameter & utilisateur.Statut)
            {
                case RoleEnum.Admin: return new SolidColorBrush(Colors.Red);
                case RoleEnum.Gouvernante: return new SolidColorBrush(Colors.Navy);
                case RoleEnum.Reception: return new SolidColorBrush(Colors.Orange);
                default: return new SolidColorBrush(Colors.Black);
            }
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
    public class RoleBoolConverter : IValueConverter
    {
        private Utilisateur_VM Selected;
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value == null) return null;
            Selected = (Utilisateur_VM)value;
            return ((RoleEnum)parameter & Selected.Statut) == (RoleEnum)parameter;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            //CurrentUtilisateur
            if (value == null) return null;
            if ((bool)value)
                Selected.Statut = (RoleEnum)parameter;
            
            return Selected;
        }
    }
    public class BoolRoleConverter : IValueConverter
    {
        private RoleEnum Selected;
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value == null) return null;
            Selected = (RoleEnum)value;
            return ((RoleEnum)parameter & Selected) == (RoleEnum)parameter;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value == null) return null;
            Selected = (RoleEnum)value;
            if ((bool)value)
                Selected |= (RoleEnum)parameter;
            else
                Selected &= ~(RoleEnum)parameter;
            return Selected;
        }
    }
}