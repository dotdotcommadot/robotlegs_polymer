import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:robotlegs/robotlegs.dart';
import 'package:robotlegs_polymer/robotlegs_polymer.dart';

void main() 
{
	initPolymer();
	
	applicationShell = document.querySelector("#applicationShell");
	
	context = new Context()
  		.install([MVCSBundle])
  		.configure([AppConfig, 
  		            new ContextView(applicationShell)]);
}