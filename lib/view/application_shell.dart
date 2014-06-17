library robotlegs_polymer.application_shell;

import 'package:polymer/polymer.dart';
import 'package:robotlegs_di/robotlegs_di.dart';
import 'package:robotlegs_polymer/robotlegs_polymer.dart';

@CustomTag('application-shell')
class ApplicationShell extends PolymerElement
{
  //-----------------------------------
  //
  // Public Properties
  //
  //-----------------------------------
	
  //-----------------------------------
  // TodoItem
  //-----------------------------------
	
	TodoItem _todoItem;
	
	@inject
	set todoItem(TodoItem value) => _todoItem = notifyPropertyChange(const Symbol('todoItem'), _todoItem, value);
	TodoItem get todoItem 			 => _todoItem;
	
  //-----------------------------------
  //
  // Constructor
  //
  //-----------------------------------
	
	ApplicationShell.created() : super.created();
	
  //-----------------------------------
  //
  // Public Methods
  //
  //-----------------------------------
	
  @postConstruct
  void onRegister()
  {
  	print(todoItem.toString());
  }
  
  void addTodo()
  {
  	todoItem.value = "nomnomnom";
  }
}