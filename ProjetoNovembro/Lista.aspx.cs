using ProjetoNovembro.Cadastro;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoNovembro
{
    public partial class Lista : System.Web.UI.Page
    {
        protected void Page_Load()
        {
            if (Usuario.Lista.Count == 0)
            {
                HttpContext.Current.Response.Redirect("/Default");
            }

            gridResultado.DataSource = Usuario.Lista;
            gridResultado.DataBind();

        }

        protected void gridResultado_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Editar")
            {
                var row = (GridViewRow)((Control)e.CommandSource).NamingContainer;
                var id = row.Cells[0].Text;

                if (id != null)
                    HttpContext.Current.Response.Redirect("/default.aspx?id=" + id);
            }

            if (e.CommandName == "Apagar")
            {
                var row = (GridViewRow)((Control)e.CommandSource).NamingContainer;
                var usuarioExclusao = decimal.Parse(row.Cells[0].Text); var lista = Usuario.Lista;
                var exclusao = (lista.Where(item => item.Id == usuarioExclusao).FirstOrDefault());

                Usuario.Lista.Remove(exclusao);

                Page_Load();
            }
        }

        protected void voltar_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("/Default");
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            var lista = Usuario.Lista;

            var nomeBusca = txtBusca.Text;

            if (nomeBusca != "")
            {
                var filtrarLista = (lista.Where(usuario => usuario.Nome == nomeBusca).ToList());

                if (filtrarLista != null)
                {
                    gridResultado.DataSource = filtrarLista;
                    gridResultado.DataBind();
                }
            }

            txtBusca.Text = "";
        }
    }
}