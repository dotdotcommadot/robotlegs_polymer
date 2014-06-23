library robotlegs_polymer.add_todo_command;

import 'package:robotlegs/robotlegs.dart';
import 'package:robotlegs_di/robotlegs_di.dart';
import 'package:robotlegs_polymer/model/todo_list_model.dart';
import 'package:dotdotcommadot_messaging/dotdotcommadot_messaging.dart';

const Symbol ADD_TODO_ITEM = const Symbol("addTodoItem");

class AddTodoItemCommand extends Command
{
	@inject 
	Message message;

	@inject 
	TodoListModel todoListModel;
	
	execute() 
	{
		todoListModel.addTodoItem(message.data);
	}
}