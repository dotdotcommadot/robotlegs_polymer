part of robotlegs_polymer;

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