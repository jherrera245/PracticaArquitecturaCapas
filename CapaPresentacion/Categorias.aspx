<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Categorias.aspx.cs" Inherits="CapaPresentacion.Categorias" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!--Librerias de Css-->
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <title>Categorías --Admin--</title>
</head>
<body>
    <form id="form1" runat="server">
        <!--inicio container-->
        <div class="container">

            <div class="row">
                <div class="col-lg-8 col-sm-12 m-auto">
                    <!--Card Categorias-->
                    <div class="card mt-4">

                        <!--Card-header-->
                        <div class="card-header bg-black text-white">
                            <div class="row">
                                <div class="col-8">
                                    <h5 class="card-title">Lista de Categorias</h5>
                                </div>

                                <div class="col-4">
                                    <button type="button" class="btn btn-secondary float-end"
                                        data-bs-toggle="modal" data-bs-target="#modal-insertar-categoria">
                                        Registrar
                                    </button>
                                </div>
                            </div>
                        </div>
                        <!--Fin Card Header-->

                        <!--GridView-->
                        <div class="table-responsive">
                            <asp:GridView
                                ID="GridViewCategorias"
                                CssClass="table border-0 table-striped table-hover"
                                runat="server">
                            </asp:GridView>
                        </div>
                        <!--Fin GridView-->

                    </div>
                    <!--Fin Card Categorias-->
                </div>
            </div>
            <!--fin container-->

            <!-- inicio modal insertar -->
            <div class="modal fade" id="modal-insertar-categoria" tabindex="-1" aria-labelledby="modal-insertar"
                aria-hidden="true">
                <div class="modal-dialog modal-fullscreen">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Formulario de Registro</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <h4>Registro de Categorias</h4>

                            <!--fomulario-->
                            <div class="row">
                                <div class="col-lg-6 col-md-8 col-sm-12">
                                    <div class="mb-3">
                                        <label class="form-label">Nombre</label>
                                        <asp:TextBox
                                            runat="server"
                                            ID="TextBoxNombreCategoria"
                                            CssClass="form-control"
                                            placeholder="Ingresa el nombre de la categoria"></asp:TextBox>
                                    </div>

                                    <div class="mb-3">
                                        <label class="form-label">Descripcion</label>
                                        <asp:TextBox
                                            runat="server"
                                            ID="TextBoxDescripcionCategoria"
                                            CssClass="form-control"
                                            TextMode="MultiLine"
                                            Rows="5"
                                            placeholder="Ingresa la descripcion de la categoria"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <!--fin formuario-->

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>

                            <asp:Button
                                ID="ButtonGuadarCategoria"
                                Text="Guadar Categoria"
                                CssClass="btn btn-primary"
                                runat="server" OnClick="ButtonGuadarCategoria_Click" />
                        </div>
                    </div>
                </div>
            </div>
            <!-- fin modal insertar -->


            <!--Librerias de javascript-->
            <script src="Scripts/bootstrap.min.js"></script>
        </div>
    </form>
</body>
</html>
