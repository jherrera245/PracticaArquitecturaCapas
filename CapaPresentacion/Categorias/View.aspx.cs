using CapaEntidad;
using CapaLogicaNegocios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapaPresentacion.Categorias
{
    public partial class View : System.Web.UI.Page
    {
        private readonly CategoriaLogica Logica = new CategoriaLogica();
        private Categoria Model = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            //verificamos que se ennvio el id por url
            if (Request["id"] != null)
            {
                int id = Convert.ToInt32(Request["id"]);
                Model = Logica.GetCategoria(id); //filtramos la categoria
                OnLoadDataModel(); //cargamos info en formularios
            }
            else
            {//si no se envio se bloquea el acceso a la vista
                Response.Redirect("~/Categorias/Index.aspx");
            }
        }

        //carga los datos del modelo en la vista
        private void OnLoadDataModel()
        {
            LabelId.Text = Convert.ToString(Model.IdCategoria);
            LabelNombre.Text = Model.NombreCategoria;
            LabelDescripcion.Text = Model.DescripcionCategoria;
        }
    }
}