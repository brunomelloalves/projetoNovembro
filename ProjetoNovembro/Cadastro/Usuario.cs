using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjetoNovembro.Cadastro
{
    public class Usuario
    {
        public Usuario() { }

        public int Id { get; set; }
        public string Nome { get; set; }
        public string Sobrenome { get; set; }
        public int Idade { get; set; }
        public string CPF { get; set; }
        public string Telefone { get; set; }
        public string Email { get; set; }
        public string Comentario { get; set; }


        public static List<Usuario> Lista = new List<Usuario>();

        public static List<Usuario> Todos()
        {
            return Usuario.Lista;
        }



    }
}