﻿using Makrisoft.Makfi.Models;
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
    public class ChambreSelectedEtatConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value == null) return null;
            Guid id = (Guid)value;
            var liste = (ObservableCollection<Etat>)parameter;
            var chambreEtat = liste.Where(c => c.Id == id).SingleOrDefault();
            return chambreEtat == null ? null : chambreEtat;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
    
}
