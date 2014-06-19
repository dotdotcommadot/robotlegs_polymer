import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:robotlegs/robotlegs.dart';
import 'package:robotlegs_polymer/robotlegs_polymer.dart';

Context context;

void main() 
{
	initPolymer();
	
	context = new Context()
		.install([MVCSBundle])
		.configure([AppConfig, 
		            new ContextView(document.querySelector("#applicationShell"))]);
}