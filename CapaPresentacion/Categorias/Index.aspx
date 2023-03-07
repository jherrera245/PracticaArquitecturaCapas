<%@ Page Title="Categorias" Language="C#" MasterPageFile="~/Layouts/AdminLayout.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CapaPresentacion.Categorias.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../Assets/js/sweetalert2.all.min.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h4>Categorías 
        <a href="Create.aspx" class="btn btn-primary">Agregar
            <i class="bi bi-pen"></i>
        </a>
    </h4>

    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header">Lista de Categorias</div>
                <div class="card-body">
                    <div class="table-responsive-lg">
                        <asp:GridView CssClass="table border-2 table-bordered table-hover mt-4" ID="GridViewCategorias" runat="server" AutoGenerateColumns="False" DataKeyNames="IdCategoria" DataSourceID="SqlDataSourceCategorias" AllowPaging="True">
                            <Columns>
                                <asp:BoundField DataField="IdCategoria" HeaderText="IdCategoria" InsertVisible="False" ReadOnly="True" SortExpression="IdCategoria" />
                                <asp:BoundField DataField="NombreCategoria" HeaderText="NombreCategoria" SortExpression="NombreCategoria" />
                                <asp:BoundField DataField="DescripcionCategoria" HeaderText="DescripcionCategoria" SortExpression="DescripcionCategoria" />

                                <asp:TemplateField HeaderText="Opciones">
                                    <ItemTemplate>
                                        <div class="text-center fs-5">
                                            <a class="text-primary" href="View.aspx?id=<%# Eval("IdCategoria") %>">
                                                <i class="bi bi-eye"></i>
                                            </a>
                                            <a class="text-success" href="Edit.aspx?id=<%# Eval("IdCategoria") %>">
                                                <i class="bi bi-pencil-square"></i>
                                            </a>
                                            <a class="text-danger" onclick="deleteCategoria(<%# Eval("IdCategoria") %>)">
                                                <i class="bi bi-trash"></i>
                                            </a>
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>

                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourceCategorias" runat="server" ConnectionString="<%$ ConnectionStrings:myAppConnectionString %>" SelectCommand="SelectCategoria" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        const deleteCategoria = (idCategoria) => {
            Swal.fire({
                title: 'Quieres borrar esta categoria?',
                text: "Una vez borrada no podras recurperarla",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Si, eliminar!'
            }).then((result) => {
                if (result.isConfirmed) {
                    Swal.fire(
                        'Eliminado!',
                        'Tu registro fue eleminado correctamente.',
                        'success'
                    )
                    //espera para recargar la pagina
                    setTimeout(() => {
                        location.href = "Index.aspx?eliminar=" + idCategoria
                    }, 500);
                }
            })
        }
    </script>
</asp:Content>
