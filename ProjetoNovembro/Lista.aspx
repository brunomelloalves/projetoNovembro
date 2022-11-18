<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lista.aspx.cs" Inherits="ProjetoNovembro.Lista" EnableEventValidation="false" %>

<asp:Content ID="GridContent" ContentPlaceHolderID="MainContent" runat="server" ValidateRequestMode="Disabled">
    <div style="text-align: -webkit-center; margin-top: 20px;">
        <div style="margin: 15px;">
            <label>Digite um nome para busca:</label>
            <asp:Label ID="lblBusca" runat="server"></asp:Label>
            <asp:TextBox ID="txtBusca" runat="server" />
            <asp:Button ID="btnBuscar" Text="Buscar" runat="server" OnClick="btnBuscar_Click" class="btn btn-primary" />
        </div>

        <asp:GridView ID="gridResultado" runat="server" OnRowCommand="gridResultado_RowCommand" AutoGenerateColumns="False" CellPadding="3" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" HeaderStyle-Width="2%">
                    <HeaderStyle Width="5%"></HeaderStyle>
                </asp:BoundField>
                <asp:BoundField DataField="Nome" HeaderText="Nome" HeaderStyle-Width="15%">
                    <HeaderStyle Width="15%"></HeaderStyle>
                </asp:BoundField>
                <asp:BoundField DataField="SobreNome" HeaderText="Sobrenome" HeaderStyle-Width="15%">
                    <HeaderStyle Width="15%"></HeaderStyle>
                </asp:BoundField>

                <asp:BoundField DataField="Idade" HeaderText="Idade" HeaderStyle-Width="5%">
                    <HeaderStyle Width="5%"></HeaderStyle>
                </asp:BoundField>
                <asp:BoundField DataField="CPF" HeaderText="CPF" HeaderStyle-Width="10%">
                    <HeaderStyle Width="15%"></HeaderStyle>
                </asp:BoundField>
                <asp:BoundField DataField="Telefone" HeaderText="Telefone" HeaderStyle-Width="10%">
                    <HeaderStyle Width="15%"></HeaderStyle>
                </asp:BoundField>
                <asp:BoundField DataField="Email" HeaderText="Email" HeaderStyle-Width="10%">
                    <HeaderStyle Width="15%"></HeaderStyle>
                </asp:BoundField>
                <asp:BoundField DataField="Comentario" HeaderText="Comentario" HeaderStyle-Width="20%">
                    <HeaderStyle Width="15%"></HeaderStyle>
                </asp:BoundField>
                <asp:TemplateField HeaderText="Ação" HeaderStyle-Width="15%">
                    <ItemTemplate>

                        <asp:LinkButton ID="lkbEditar" Text="Editar" runat="server" CommandName="Editar" />
                        <asp:LinkButton ID="lbkApagar" Text=" /Apagar" runat="server" CommandName="Apagar" />
                    </ItemTemplate>

                    <%--<HeaderStyle Width="8%"></HeaderStyle>--%>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>

        <asp:Button ID="voltar" Text="Voltar" runat="server" OnClick="voltar_Click" />
    </div>

</asp:Content>

