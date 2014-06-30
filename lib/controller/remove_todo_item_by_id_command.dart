library robotlegs_polymer.remove_todo_item_by_id_command;

import 'package:robotlegs/robotlegs.dart';
import 'package:robotlegs_di/robotlegs_di.dart';
import 'package:robotlegs_polymer/model/todo_list_model.dart';
import 'package:dotdotcommadot_messaging/dotdotcommadot_messaging.dart';

const Symbol REMOVE_TODO_ITEM_BY_ID = const Symbol("RemoveTodoItemByIdCommand.REMOVE_TODO_ITEM_BY_ID");

class RemoveTodoItemByIdCommand extends Command
{
	@inject 
	Message message;

	@inject 
	TodoListModel todoListModel;
	
	execute() 
	{
		todoListModel.removeTodoItemById(message.data as int);
	}
}