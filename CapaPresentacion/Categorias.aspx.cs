using CapaLogicaNegocios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapaPresentacion
{
    public partial class Categorias : System.Web.UI.Page
    {
        //creamos un objeto de la clase CategoriaLogica que se encuentra en la
        //capa de logica negocios
        private CategoriaLogica Logica = new CategoriaLogica();

        protected void Page_Load(object sender, EventArgs e)
        {
            //Cargamos los valores de la consulata en nuestro GridView
            GridViewCategorias.DataSource = Logica.ListaCategorias();
            GridViewCategorias.DataBind(); //se ejecuta el origen de datos
        }
    }
}