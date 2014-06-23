library robotlegs_polymer.application_shell;

import 'package:robotlegs_polymer/model/vo/todo_item.dart';
import 'package:observe/observe.dart';
import 'package:polymer/polymer.dart';
import 'dart:async';
import 'dart:html' as dom;

@CustomTag('todo-list-view')
class TodoListView extends PolymerElement
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
	List<TodoItem> todoItems;
  
  //-----------------------------------
  // addTodoButtonClickedController
  //-----------------------------------
	
  StreamController addTodoButtonClickedController = new StreamController.broadcast();
	
  //-----------------------------------
  //
  // Constructor
  //
  //-----------------------------------
	
  TodoListView.created() : super.created();
	
  //-----------------------------------
  //
  // Public Methods
  //
  //-----------------------------------
  
  void addTodo()
  {
  	dom.InputElement descriptionInput = shadowRoot.querySelector('#description-input');
  	addTodoButtonClickedController.add(descriptionInput.value);
  }
}