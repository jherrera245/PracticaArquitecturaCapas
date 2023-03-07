<%@ Page Title="Detalles Categoria" Language="C#" MasterPageFile="~/Layouts/AdminLayout.Master" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="CapaPresentacion.Categorias.View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Detalles de Categorias</h5>

                    <!-- Vertical Pills Tabs -->
                    <div class="d-flex align-items-start">
                        <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                            <button class="nav-link" id="v-pills-id-tab" data-bs-toggle="pill" data-bs-target="#v-pills-id" type="button" role="tab" aria-controls="v-pills-id" aria-selected="false" tabindex="-1">ID</button>
                            <button class="nav-link active" id="v-pills-nombre-tab" data-bs-toggle="pill" data-bs-target="#v-pills-nombre" type="button" role="tab" aria-controls="v-pills-nombre" aria-selected="false" tabindex="-1">Categoria</button>
                            <button class="nav-link" id="v-pills-descripcion-tab" data-bs-toggle="pill" data-bs-target="#v-pills-descripcion" type="button" role="tab" aria-controls="v-pills-descripcion" aria-selected="true">Descripción</button>
                        </div>
                        <div class="tab-content" id="v-pills-tabContent">
                            <div class="tab-pane fade" id="v-pills-id" role="tabpanel" aria-labelledby="v-pills-id-tab">
                                <asp:Label ID="LabelId" runat="server"></asp:Label>
                            </div>
                            <div class="tab-pane fade active show" id="v-pills-nombre" role="tabpanel" aria-labelledby="v-pills-nombre-tab">
                                <asp:Label ID="LabelNombre" runat="server"></asp:Label>
                            </div>
                            <div class="tab-pane fade" id="v-pills-descripcion" role="tabpanel" aria-labelledby="v-pills-descripcion-tab">
                                <asp:Label ID="LabelDescripcion" runat="server"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <!-- End Vertical Pills Tabs -->

                </div>

                <div class="card-footer">
                    <a class="btn btn-secondary" href="Index.aspx">Cancelar
                        <i class="bi bi-arrow-bar-left"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
