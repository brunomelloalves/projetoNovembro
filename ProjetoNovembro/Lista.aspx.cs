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
        protected void Page_Load(object sender, EventArgs e)
        {
            gridResultado.DataSource = Usuario.Lista;
            gridResultado.DataBind();
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            ViewState["Nome"] = gridResultado.Rows[0].Cells[0].Text;

            var usuario = gridResultado.Rows[0].Cells[0].Text;

            if (usuario != null)
            {
                var teste = Usuario.Lista.ToArray()[0];
                Usuario.Lista.Remove(teste);
                teste.Nome = "teste Edicao 3";
                Usuario.Lista.Add(teste);

            }
        }
    }
}