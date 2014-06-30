library robotlegs_polymer.application_shell_mediator;

import 'package:robotlegs/robotlegs.dart';
import 'package:robotlegs_di/robotlegs_di.dart';
import 'package:robotlegs_polymer/model/vo/todo_item.dart';
import 'package:robotlegs_polymer/model/todo_list_model.dart';
import 'package:robotlegs_polymer/view/todo_list_view.dart';
import 'package:robotlegs_polymer/controller/add_todo_item_command.dart';
import 'package:robotlegs_polymer/controller/remove_todo_item_by_id_command.dart';
import 'package:observe/src/change_record.dart';

class TodoListMediator extends Mediator
{
  //-----------------------------------
  //
  // Public Properties
  //
  //-----------------------------------
	
  //-----------------------------------
  // todoListModel
  //-----------------------------------
	
	@inject
	TodoListModel todoListModel;
	
  //-----------------------------------
  // view
  //-----------------------------------
	
	TodoListView get view => viewComponent as TodoListView;
	
  //-----------------------------------
  //
  // Constructor
  //
  //-----------------------------------
  	
	TodoListMediator();
	
  //-----------------------------------
  //
  // Public Methods
  //
  //-----------------------------------
	
	@override
	void initialize() 
	{
		// Listen to view
		view.addTodoItemRequestController.stream.listen(_onRequest_addTodoItem);
		view.removeTodoItemRequestController.stream.listen(_onRequest_removeTodoItem);
		
		// Listen to model
		todoListModel.todoItems.changes.listen(_onChanged_todoItems);
	}
	
	void _onRequest_addTodoItem(String description)
	{
		TodoItem todoItem = new TodoItem();
		todoItem.id = todoListModel.todoItems.length == 0 ? 1 : todoListModel.todoItems.last.id + 1;
		todoItem.description = description;
		
		dispatch(ADD_TODO_ITEM, todoItem);
	}

	void _onRequest_removeTodoItem(int id)
	{
		dispatch(REMOVE_TODO_ITEM_BY_ID, id);
	}
	
	void _onChanged_todoItems(List<ChangeRecord> changes)
	{
		view.todoItems = todoListModel.todoItems;
	}
}