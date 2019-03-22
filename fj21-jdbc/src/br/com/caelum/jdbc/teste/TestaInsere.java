package br.com.caelum.jdbc.teste;

import java.util.Calendar;

import br.com.caelum.jdbc.dao.ContatoDAO;
import br.com.caelum.jdbc.modelo.Contato;

public class TestaInsere {
	
	public static void main(String[] args) {
		
		Contato contato = new Contato();
		
		contato.setNome("Contato de testes 02");
		contato.setEmail("teste02@teste.com");
		contato.setEndereco("R. Teste, 02");
		contato.setDataNascimento(Calendar.getInstance());
		
		ContatoDAO dao = new ContatoDAO();
		
		dao.adiciona(contato);
		
		System.out.println("Gravado com sucesso!");
		
	}

}
