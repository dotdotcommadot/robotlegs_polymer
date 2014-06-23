library robotlegs_polymer.app_config;

import 'package:robotlegs/robotlegs.dart';
import 'package:robotlegs_di/robotlegs_di.dart';
import 'package:robotlegs_polymer/model/todo_list_model.dart';
import 'package:robotlegs_polymer/view/todo_list_view.dart';
import 'package:robotlegs_polymer/view/todo_list_mediator.dart';
import 'package:robotlegs_polymer/controller/add_todo_item_command.dart';

class AppConfig implements IConfig
{
	@inject
	IInjector injector;
	
	@inject
	IMediatorMap mediatorMap;

	@inject
	IMessageCommandMap messageCommandMap;
	
	void configure()
	{
		// Map models
		injector.map(TodoListModel).asSingleton();
		
		// Map mediators
		mediatorMap.map(TodoListView)
							 .toMediator(TodoListMediator);
		
		// Map commands
		messageCommandMap.map(ADD_TODO_ITEM)
										 .toCommand(AddTodoItemCommand);
	}
}