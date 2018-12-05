package com.in28minutes.todo.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.in28minutes.todo.Todo;
import com.in28minutes.todo.TodoService;

@RestController
public class TodoRestController {

	@Autowired

	TodoService todoService;

	@RequestMapping(value = "/todos")
	public List<Todo> retrieveAllTodo() {
		return todoService.retrieveAllTodos();
	}

	@RequestMapping(value = "/todos/{id}")
	public Todo retrieveTodo(@PathVariable int id) {
		return todoService.retrieveTodo(id);
	}
}
