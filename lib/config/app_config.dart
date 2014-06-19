library app_config;

import 'package:robotlegs/robotlegs.dart';
import 'package:robotlegs_di/robotlegs_di.dart';
import 'package:robotlegs_polymer/model/todo_item.dart';
import 'package:robotlegs_polymer/view/application_shell.dart';
import 'package:robotlegs_polymer/view/application_shell_mediator.dart';

class AppConfig implements IConfig
{
	@inject
	IInjector injector;
	
	@inject
	IMediatorMap mediatorMap;
	
	void configure()
	{
		// Map models
		injector.map(TodoItem);
		
		// Map mediators
		mediatorMap.map(ApplicationShell)
							 .toMediator(ApplicationShellMediator);
	}
}