<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lista.aspx.cs" Inherits="ProjetoNovembro.Lista" EnableEventValidation="false" %>

<asp:Content ID="GridContent" ContentPlaceHolderID="MainContent" runat="server" ValidateRequestMode="Disabled">
    <div style="text-align: -webkit-center; margin-top: 20px;">

        <asp:GridView ID="gridResultado" runat="server" AutoGenerateColumns="False" CellPadding="3" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="Nome" HeaderText="Nome" HeaderStyle-Width="20%">
                    <HeaderStyle Width="15%"></HeaderStyle>
                </asp:BoundField>
                <asp:BoundField DataField="SobreNome" HeaderText="Sobrenome" HeaderStyle-Width="20%">
                    <HeaderStyle Width="15%"></HeaderStyle>
                </asp:BoundField>
                <asp:BoundField DataField="Telefone" HeaderText="Telefone" HeaderStyle-Width="20%">
                    <HeaderStyle Width="15%"></HeaderStyle>
                </asp:BoundField>
                <asp:TemplateField HeaderText="Ação" HeaderStyle-Width="7%">
                    <ItemTemplate>
                        <asp:Button Text="Editar" runat="server" OnClick="Unnamed_Click"/>
                    </ItemTemplate>

                    <HeaderStyle Width="15%"></HeaderStyle>
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
    </div>

</asp:Content>

