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
    public partial class Edit : System.Web.UI.Page
    {
        private readonly CategoriaLogica Logica = new CategoriaLogica();
        private Categoria Model = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            { //forzamos que la pagina no se recargue al actualizar
                return;
            }

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
            TextBoxIdCategoria.Text = Convert.ToString(Model.IdCategoria);
            TextBoxNombreCategoria.Text = Model.NombreCategoria;
            TextBoxDescripcionCategoria.Text = Model.DescripcionCategoria;
        }

        protected void ButtonGuadarCategoria_Click(object sender, EventArgs e)
        {
            //verficamos que las si las entradas estan vacias
            if (TextBoxNombreCategoria.Text == "" || TextBoxDescripcionCategoria.Text == "")
            {
                return;
            }

            Categoria model = new Categoria
            {
                IdCategoria = int.Parse(TextBoxIdCategoria.Text),
                NombreCategoria = TextBoxNombreCategoria.Text,
                DescripcionCategoria = TextBoxDescripcionCategoria.Text
            };

            //varificamos el resultado
            bool resultado = Logica.ActualizarCategoria(model);

            if (resultado)
            {
                //Regresamos a la vista Index.aspx
                Response.Redirect("~/Categorias/Index.aspx");
            }
        }
    }
}