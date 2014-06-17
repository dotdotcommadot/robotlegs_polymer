part of robotlegs_polymer;

class AppConfig implements IConfig
{
	@inject
	IInjector injector;
	
	@inject
	IViewProcessorMap viewProcessor;
	
	void configure()
	{
		injector.map(TodoItem);
		
		viewProcessor.map(applicationShell.runtimeType).toInjection();
	}
}