library robotlegs_polymer.application_shell_mediator;

import 'package:robotlegs/robotlegs.dart';
import 'package:robotlegs_di/robotlegs_di.dart';
import 'package:robotlegs_polymer/model/vo/todo_item.dart';
import 'package:robotlegs_polymer/model/todo_list_model.dart';
import 'package:robotlegs_polymer/view/todo_list_view.dart';
import 'package:robotlegs_polymer/controller/add_todo_item_command.dart';
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
		view.addTodoButtonClickedController.stream.listen(_onClicked_addTodoButton);
		
		// Listen to model
		todoListModel.todoItems.changes.listen(_onChanged_todoItems);
	}
	
	void _onClicked_addTodoButton(String description)
	{
		TodoItem todoItem = new TodoItem();
		todoItem.description = description;
		
		dispatch(ADD_TODO_ITEM, todoItem);
	}
	
	void _onChanged_todoItems(List<ChangeRecord> changes)
	{
		view.todoItems = todoListModel.todoItems;
	}
}