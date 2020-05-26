using Microsoft.Extensions.Configuration;
using MultipleLanguageDynamicContent.Abstract;
using MultipleLanguageDynamicContent.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace MultipleLanguageDynamicContent.Concrete
{
    public class EnMakale : Makale, IMakale
    {
        public List<Makale> MakaleListele()
        {
            var configuration = new ConfigurationBuilder()
                 .SetBasePath(Directory.GetCurrentDirectory())
                 .AddJsonFile("appsettings.json", false)
                 .Build();
            var connectionString = configuration.GetConnectionString("connectionString");
            List<Makale> makales = new List<Makale>();
            using (var conn = new SqlConnection(connectionString))
            {
                conn.Open();
                var sql = "SELECT * FROM Makale where DilId=2";
                using (var cmd = new SqlCommand(sql, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            makales.Add(new EnMakale
                            {
                                Baslik = reader["Baslik"].ToString(),
                                Aciklama = reader["Aciklama"].ToString()
                            });
                        }
                    }
                }
                conn.Close();
            }
            return makales;
        }
    }
}
