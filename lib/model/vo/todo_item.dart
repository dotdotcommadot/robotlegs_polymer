library robotlegs_polymer.model.vo.todo_item;

import 'package:observe/observe.dart';

class TodoItem
{
  //-----------------------------------
  //
  // Public Properties
  //
  //-----------------------------------
	
	@observable
	String description;

	@observable
	DateTime dueDate;

	@observable
	bool completed;
	
  //-----------------------------------
  //
  // Constructor
  //
  //-----------------------------------
	
	TodoItem();
}