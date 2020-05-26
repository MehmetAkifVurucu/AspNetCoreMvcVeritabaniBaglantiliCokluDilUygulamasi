using MultipleLanguageDynamicContent.Abstract;
using MultipleLanguageDynamicContent.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MultipleLanguageDynamicContent.Operation
{
    public class MakaleOperation
    {
        private IMakale _makale;
        public MakaleOperation(IMakale makale)
        {
            _makale = makale;
        }

        public List<Makale> MakaleListele()
        {
            return _makale.MakaleListele();
        }
    }
}
