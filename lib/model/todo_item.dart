library robotlegs_polymer.model;

import 'package:robotlegs_di/robotlegs_di.dart';
import 'package:observe/observe.dart';
import 'package:polymer/polymer.dart';

class TodoItem
{
  //-----------------------------------
  //
  // Public Properties
  //
  //-----------------------------------
	
	@observable
	String value = "Eat Cookies";
	
  //-----------------------------------
  //
  // Constructor
  //
  //-----------------------------------
	
	TodoItem();
	
  //-----------------------------------
  //
  // Public Methods
  //
  //-----------------------------------
	
	@postConstruct
	void onRegister()
	{
		print("Todo Item " + value);
	}
}