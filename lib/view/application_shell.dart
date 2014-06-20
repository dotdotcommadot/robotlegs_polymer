library robotlegs_polymer.application_shell;

import 'package:robotlegs_polymer/model/vo/todo_item.dart';
import 'package:observe/observe.dart';
import 'package:polymer/polymer.dart';
import 'dart:async';

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
	
	@observable
	TodoItem todoItem;
	
  //-----------------------------------
  // addTodoButtonClickedController
  //-----------------------------------
	
  StreamController addTodoButtonClickedController = new StreamController.broadcast();
	
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
  
  void addTodo()
  {
  	addTodoButtonClickedController.add('');
  }
}