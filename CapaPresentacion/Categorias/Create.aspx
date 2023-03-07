<%@ Page Title="Create Categoria" Language="C#" MasterPageFile="~/Layouts/AdminLayout.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="CapaPresentacion.Categorias.Create" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <h4>Registro de Categorias</h4>

            <div class="card">
                <div class="card-header">
                    <i class="bi bi-pencil"></i>
                    Formulario de Registro
                </div>

                <div class="card-body">
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
                </div>

                <div class="card-footer">
                    <asp:Button
                        ID="ButtonGuadarCategoria"
                        Text="Guadar"
                        CssClass="btn btn-primary"
                        runat="server" OnClick="ButtonGuadarCategoria_Click" />

                    <a class="btn btn-secondary" href="Index.aspx">
                        Cancelar
                        <i class="bi bi-arrow-bar-left"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
