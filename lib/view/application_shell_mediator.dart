library robotlegs_polymer.application_shell_mediator;

import 'package:robotlegs/robotlegs.dart';
import 'package:robotlegs_di/robotlegs_di.dart';
import 'package:robotlegs_polymer/model/vo/todo_item.dart';
import 'package:robotlegs_polymer/model/todo_list_model.dart';
import 'package:robotlegs_polymer/view/application_shell.dart';
import 'package:robotlegs_polymer/controller/add_todo_item_command.dart';
import 'package:observe/src/change_record.dart';

class ApplicationShellMediator extends Mediator
{
  //-----------------------------------
  //
  // Public Properties
  //
  //-----------------------------------
	
	@inject
	TodoListModel todoListModel;
	
	ApplicationShell get view => viewComponent as ApplicationShell;
	
  //-----------------------------------
  //
  // Constructor
  //
  //-----------------------------------
  	
	ApplicationShellMediator();
	
  //-----------------------------------
  //
  // Public Methods
  //
  //-----------------------------------
	
	@override
	void initialize() 
	{
		addStreamListener(view.addTodoButtonClickedController.stream, _onClicked_addtodoButton);
		addStreamListener(todoListModel.todoItems.changes, _onChanged_todoItems);
	}
	
	void _onClicked_addtodoButton(String description)
	{
		TodoItem todoItem = new TodoItem();
		todoItem.description = description;
		
		dispatch(ADD_TODO_ITEM, todoItem);
	}
	
	void _onChanged_todoItems(List<ChangeRecord> changes)
	{
		view.todoItem = todoListModel.todoItems.last;
	}
}