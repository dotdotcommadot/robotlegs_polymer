library robotlegs_polymer.application_shell_mediator;

import 'package:robotlegs/robotlegs.dart';
import 'package:robotlegs_di/robotlegs_di.dart';
import 'package:robotlegs_polymer/model/todo_item.dart';
import 'package:robotlegs_polymer/view/application_shell.dart';

class ApplicationShellMediator extends Mediator
{
	@inject
	TodoItem todoItem;
  	
	ApplicationShellMediator();
	
	@override
	void initialize() 
	{
		(viewComponent as ApplicationShell).todoItem = todoItem;
		(viewComponent as ApplicationShell).addTodoButtonClickedController.stream.listen(onAddTodoButtonClicked);
	}
	
	void onAddTodoButtonClicked(payload)
	{
		// TODO: Should be done by a command
		todoItem.value = payload;
	}
}