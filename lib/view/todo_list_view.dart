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
  // addTodoItemRequestController
  //-----------------------------------
	
  StreamController addTodoItemRequestController = new StreamController.broadcast();
  StreamController removeTodoItemRequestController = new StreamController.broadcast();
	
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
  
  void descriptionInput_onKeyUp(dom.KeyboardEvent event, dynamic detail, dom.Element target)
  {
  	switch(event.keyCode) {
  		case 13:
  			addItem();
  	}
  }
  
  void addItem()
  {
  	dom.InputElement descriptionInput = shadowRoot.querySelector('#description-input');
  	addTodoItemRequestController.add(descriptionInput.value);
  }
  
  void removeItem(dom.Event event, dynamic detail, dom.Element target)
  {
  	int todoItem = int.parse(target.attributes['todo-item-id']);
  	removeTodoItemRequestController.add(todoItem);
  }
}