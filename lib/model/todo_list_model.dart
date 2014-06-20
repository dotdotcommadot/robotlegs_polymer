library robotlegs_polymer.model.todo_list_model;

import 'package:observe/observe.dart';
import 'package:robotlegs_polymer/model/vo/todo_item.dart';

class TodoListModel
{
  //-----------------------------------
  //
  // Public Properties
  //
  //-----------------------------------
	
	ObservableList<TodoItem> todoItems = new ObservableList();
	
  //-----------------------------------
  //
  // Constructor
  //
  //-----------------------------------
	
	TodoListModel();
	
  //-----------------------------------
  //
  // Public Methods
  //
  //-----------------------------------
	
	addTodoItem(TodoItem item)
	{
		todoItems.add(item);
	}

	deleteTodoItem(TodoItem item)
	{
		if (todoItems.contains(item))
			todoItems.remove(item);
	}
}