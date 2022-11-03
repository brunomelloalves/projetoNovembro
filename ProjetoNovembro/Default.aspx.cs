using ProjetoNovembro.Cadastro;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace ProjetoNovembro
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void salvar_Click(object sender, EventArgs e)
        {
            var cadastro = new Usuario();
            cadastro.Nome = txtNome.Value ;
            cadastro.Sobrenome = txtSobreNome.Value;
            cadastro.Telefone = txtTelefone.Value;
            cadastro.Email = txtEmail.Value;
            cadastro.Comentario = txtcomentario.Value;

            Usuario.Lista.Add(cadastro);

            

        }
    }
}