<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjetoNovembro._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="">
        <div class="jumbotron" style="text-align-last: center;">
            <h1>Avalie nosso produto</h1>
            <p class="lead">Deixe aqui sua impressão para que possamos melhorar sua experiência</p>
        </div>
    </div>
    <div class="row" style="margin-left: 15%;">
        <div class="row">
            <div class="col-md-6">
                <label id="Nome">Nome:</label>
                <label id="lblNome" style="color: red;" runat="server"></label>
                <input type="text" id="txtNome" runat="server" maxlength="80" class="form-control">
            </div>
            <div class="col-md-6">
                <label id="SobreNome">SobreNome:</label>
                <label id="lblSobrenome" style="color: red;" runat="server"></label>
                <input type="text" id="txtSobreNome" runat="server" maxlength="80" class="form-control">
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <label id="Idade">Idade:</label>
                <label id="lblIdade" style="color: red;" runat="server"></label>
                <input type="text" id="txtIdade" runat="server" maxlength="80" class="form-control">
            </div>
            <div class="col-md-6">
                <asp:Label runat="server" ID="CPF" Style="font-weight: bold;">CPF:</asp:Label>
                <label id="lblCPF" style="color: red;" runat="server"></label>
                <input type="text" id="txtCPF" runat="server" maxlength="80" class="form-control">
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <asp:Label runat="server" ID="email" Style="font-weight: bold;">E-mail:</asp:Label>
                <label id="lblEmail" style="color: red;" runat="server"></label>
                <input type="email" class="form-control" runat="server" id="txtEmail" maxlength="64" />
            </div>
            <div class="col-md-6">
                <asp:Label runat="server" ID="telefone" Style="font-weight: bold;">Telefone:</asp:Label>
                <label id="lblTelefone" style="color: red;" runat="server"></label>
                <input type="tel" class="form-control" runat="server" id="txtTelefone" maxlength="15">
            </div>
        </div>

    </div>
    <div class="row" style="text-align: -webkit-center;">
        <div class="col-12">
            <div class="form-group">
                <label>Comentário:</label>
                <label id="lblComentario" style="color: red;" runat="server"></label>
                <textarea type="text" class="form-control" runat="server" id="txtcomentario" maxlength="120" style="width: 92%;"></textarea>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-12" style="margin-left: 45%;">
            <asp:Button ID="salvar" Text="Enviar" type="button" class="btn btn-primary" runat="server" OnClick="salvar_Click" />
            <asp:Button ID="lista" Text="Lista" type="button" class="btn btn-primary" runat="server" OnClick="lista_Click" />
        </div>
    </div>
</asp:Content>
