package br.com.caelum.tarefas.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import br.com.caelum.tarefas.dao.JdbcTarefaDao;
import br.com.caelum.tarefas.modelo.Tarefa;

@RestController
public class TarefasRestController {
	
	@Autowired
	private JdbcTarefaDao dao;
	
	@RequestMapping(value="/tarefas", method=RequestMethod.GET, produces=MediaType.APPLICATION_JSON_VALUE)
	public List<Tarefa> lista() {
		List<Tarefa> tarefas = dao.lista();
		return tarefas;
	}
	
	@RequestMapping(value="/tarefas/{id}", method=RequestMethod.GET, produces=MediaType.APPLICATION_JSON_VALUE)
	public Tarefa buscaPorId(@PathVariable("id") Long id) {
		
		Tarefa tarefa = dao.buscaPorId(id);
				
		return tarefa;
	}
	
	
	@RequestMapping(value="/tarefas", method=RequestMethod.POST, consumes=MediaType.APPLICATION_JSON_VALUE)
	public void insere(@RequestBody Tarefa tarefa) {
		
		dao.adiciona(tarefa);
		
	}
	
	@RequestMapping(value="/tarefas", method=RequestMethod.DELETE, consumes=MediaType.APPLICATION_JSON_VALUE)
	public void delete(@RequestBody Tarefa tarefa) {
		
		dao.remove(tarefa);
		
	}
	
	@RequestMapping(value="/tarefas/{id}", method=RequestMethod.PUT, consumes=MediaType.APPLICATION_JSON_VALUE, produces=MediaType.APPLICATION_JSON_VALUE)
	public Tarefa insere(@RequestBody Tarefa tarefa, @PathVariable("id") Long id) {
		
		tarefa.setId(id);
		dao.altera(tarefa);
		
		return dao.buscaPorId(id);
	}

}
