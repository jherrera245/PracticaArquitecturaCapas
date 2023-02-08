using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaAccesoDatos
{
    public class CategoriaDatos
    {
        //realizar la conexion dentro de la clase
        private SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlconn"].ConnectionString);

        //metodo para la consulta de datos
        public DataTable SelectCategoriaDatos()
        {
            SqlCommand command = new SqlCommand("SelectCategoria ", connection);
            command.CommandType = CommandType.StoredProcedure; // declaramos que utilizaremos un procedimiento almacenado
            SqlDataAdapter dataAdapter = new SqlDataAdapter(command); // se almacena y ejecuta.
            DataTable dataTable = new DataTable(); // se crea el data table
            dataAdapter.Fill(dataTable);
            return dataTable;
        }
    }
}
