using Caelum.Stella.CSharp.Validation;
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
            lblNome.Visible = false;
            lblSobrenome.Visible = false;
            lblIdade.Visible = false;
            lblCPF.Visible = false;
            lblTelefone.Visible = false;
            lblEmail.Visible = false;
            lblComentario.Visible = false;

            Carregar();
        }

        private void Carregar()
        {
            var lista = Usuario.Lista;

            if (lista.Count > 0)
            {
                var usuario = Request.QueryString["id"] == null ? "" : Request.QueryString["id"];

                var jaExiste = (lista.Where(item => item.Id.ToString() == usuario).FirstOrDefault());

                if (Request.QueryString["id"] != null && jaExiste != null)
                {
                    if (usuario != null)
                    {
                        var edicao = (lista.Where(item => item.Id.ToString() == usuario).FirstOrDefault());

                        txtNome.Value = edicao.Nome;
                        txtSobreNome.Value = edicao.Sobrenome;
                        txtIdade.Value = edicao.Idade.ToString();
                        txtCPF.Value = edicao.CPF;
                        txtEmail.Value = edicao.Email;
                        txtTelefone.Value = edicao.Telefone;
                        txtcomentario.Value = edicao.Comentario;

                        Usuario.Lista.Remove(edicao);
                    }
                }
            }
        }

        protected void ValidarDados()
        {
            var nome = txtNome.Value;
            var sobrenome = txtSobreNome.Value;
            var idade = txtIdade.Value;
            var cpf = txtCPF.Value;
            var telefone = txtTelefone.Value;
            var email = txtEmail.Value;
            var comentario = txtcomentario.Value;

            if (nome == "")
            {
                lblNome.InnerText = "É necessário informar o nome.";
                lblNome.Visible = true;
            }
            if (sobrenome == "")
            {
                lblSobrenome.InnerText = "É necessário informar o sobrenome.";
                lblSobrenome.Visible = true;
            }
            if (cpf != "")
            {
                try
                {
                    new CPFValidator().AssertValid(cpf);
                }
                catch (Exception ex)
                {
                    lblCPF.InnerText = "CPF inválido";
                    lblCPF.Visible = true;
                    return;
                }
            }
            if (cpf == "")
            {
                lblCPF.InnerText = "É necessário informar o CPF.";
                lblCPF.Visible = true;
            }
            if (telefone == "")
            {
                lblTelefone.InnerText = "É necessário informar o telefone.";
                lblTelefone.Visible = true;
            }
            if (email == "")
            {
                lblEmail.InnerText = "É necessário informar o e-mail.";
                lblEmail.Visible = true;
            }
            if (comentario == "")
            {
                lblComentario.InnerText = "É necessário informar um comentário.";
                lblComentario.Visible = true;
                return;

            }


            var cadastro = new Usuario();
            var contadorID = Usuario.Lista.Count == 0 ? 0 : Usuario.Lista.Last().Id;

            cadastro.Id = contadorID + 1;
            cadastro.Nome = txtNome.Value;
            cadastro.Sobrenome = txtSobreNome.Value;
            cadastro.Idade = int.Parse(idade);
            cadastro.CPF = cpf;
            cadastro.Telefone = txtTelefone.Value;
            cadastro.Email = txtEmail.Value;
            cadastro.Comentario = txtcomentario.Value;

            Salvar(cadastro);
        }

        protected void salvar_Click(object sender, EventArgs e)
        {
            ValidarDados();
        }

        private void Salvar(Usuario usuario)
        {
            Usuario.Lista.Add(usuario);
            txtNome.Value = "";
            txtSobreNome.Value = "";
            txtIdade.Value = "";
            txtCPF.Value = "";
            txtEmail.Value = "";
            txtTelefone.Value = "";
            txtcomentario.Value = "";

            Carregar();

        }

        protected void lista_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("/lista");
        }
    }
}