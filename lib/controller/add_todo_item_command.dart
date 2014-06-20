library robotlegs_polymer.add_todo_command;

import 'package:robotlegs/robotlegs.dart';
import 'package:robotlegs_di/robotlegs_di.dart';
import 'package:robotlegs_polymer/model/vo/todo_item.dart';
import 'package:robotlegs_polymer/model/todo_list_model.dart';

const Symbol ADD_TODO_ITEM = const Symbol("addTodoItem");

class AddTodoItemPayload
{
	final TodoItem todoItem;
	
	AddTodoItemPayload(this.todoItem);
}

class AddTodoItemCommand extends Command
{
	@inject 
	AddTodoItemPayload payload;

	@inject 
	TodoListModel todoListModel;
	
	execute() 
	{
		todoListModel.addTodoItem(payload.todoItem);
	}
}