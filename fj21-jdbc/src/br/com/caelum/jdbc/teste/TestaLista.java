package br.com.caelum.jdbc.teste;

import java.util.List;

import br.com.caelum.jdbc.dao.ContatoDAO;
import br.com.caelum.jdbc.modelo.Contato;

public class TestaLista {
	public static void main(String[] args) {
				
		ContatoDAO dao = new ContatoDAO();
		List<Contato> contatos = dao.lista();
		
		for (Contato c : contatos) {
			System.out.println("Nome: " + c.getNome() + "\n" +
					"E-mail: " + c.getEmail() + "\n" +
					"Endereço: " + c.getEndereco() + "\n" +
					"Data de Nascimento: " + c.getDataNascimento().getTime()+ "\n" +
					"========================================================================================");
			
		}
		
	}

}
