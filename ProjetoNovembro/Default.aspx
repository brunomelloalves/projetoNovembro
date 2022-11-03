<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjetoNovembro._Default" %>

<%--<%@ Register Src="~/Modal.aspx" TagName="agradecimento" TagPrefix="uc1" %>--%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div class="jumbotron" style="text-align-last: center;">
            <h1>Avalie nosso produto</h1>
            <p class="lead">Deixe aqui sua impressão para que possamos melhorar sua experiência</p>
        </div>
    </div>

    <div class="row" style="margin-left: 5%;">
        <div class="col-md-8">
            <div class="form-group">
                <label id="Nome">Nome:</label>
                <input type="text" id="txtNome" runat="server" maxlength="80" class="form-control">
            </div>
            <div class="form-group">
                <label id="SobreNome">SobreNome:</label>
                <input type="text" id="txtSobreNome" runat="server" required maxlength="80" class="form-control">
            </div>
        </div>
        <div class="form-group">
            <label>Telefone:</label>
            <input type="text" class="form-control" runat="server" id="txtTelefone" maxlength="15">
        </div>
        <div class="form-group">
            <label>E-mail:</label>
            <input type="email" class="form-control" runat="server" id="txtEmail" maxlength="64" required />
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <label>Comentário:</label>
                <textarea type="text" class="form-control" runat="server" id="txtcomentario" maxlength="120" style="width: 92%;">
                    </textarea>
            </div>
        </div>
        <div style="margin-left: 45%;">
            <asp:Button ID="salvar" Text="Enviar" type="button" class="btn btn-primary" runat="server" OnClick="salvar_Click" />
        </div>
    </div>
    <%--<div id="PopupAgradecimento" style="display: none;">
        <asp:UpdatePanel ID="upAgradecimento" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <uc1:agradecimento ID="agradecimento" runat="server" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>--%>


</asp:Content>
