package br.com.caelum.mvc.logica;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class BuscaContatoLogic implements Logica{

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		long id = Long.parseLong(req.getParameter("id"));
				
		ContatoDao dao = new ContatoDao();
		Contato contato = dao.busca(id);
		
		req.setAttribute("contatoBusca", contato);

		return "altera-contato.jsp";
	}

}
