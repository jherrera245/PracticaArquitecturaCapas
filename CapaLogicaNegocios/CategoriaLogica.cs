using CapaAccesoDatos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaLogicaNegocios
{
    public class CategoriaLogica
    {
        //objeto de la clase CategoriaDatos
        private CategoriaDatos Datos = new CategoriaDatos();

        //metodo para la seleccion de datos
        public DataTable ListaCategorias() {
            return Datos.SelectCategoriaDatos();
        }
    }
}
