using CapaLogicaNegocios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapaPresentacion.Categorias
{
    public partial class Index : System.Web.UI.Page
    {
        //creamos un objeto de la clase CategoriaLogica que se encuentra en la
        //capa de logica negocios
        private readonly CategoriaLogica Logica = new CategoriaLogica();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["eliminar"] != null)
            {
                int idCategoria = int.Parse(Request["eliminar"]);

                if (Logica.EliminarCategoria(idCategoria))
                {
                    //refrecamos nustra pagina
                    Response.Redirect("~/Categorias/Index.aspx");
                }
                else
                {
                    string alertError = "Swal.fire({";
                    alertError += "icon: 'error',";
                    alertError += "title: 'Oops...',";
                    alertError += "text: 'El registro de pudo ser eliminado',";
                    alertError += "footer: '<a>Ingresa aqui para obtener más información?</a>'";
                    alertError += "})";

                    ScriptManager.RegisterClientScriptBlock(
                        this, this.GetType(), "script", alertError, true
                    );
                }
            }
        }
    }
}