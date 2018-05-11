class CfgPatches
{
	class RestartTimerEX  
	{
		requiredAddons[] = {"PluginManager"};
	}; 
};

class Plugins
{
	class RestartTimerEX  
	{
		name = "Restart Timer Extended"; 
		desc = "Desolation Redux Restart Timer Extended"; 
		tag = "RTX"; 
	};
};

class CfgPluginKeybinds 
{
	class RestartTimerEXKeybind 
	{
		displayName = "Restart Timer Extended Keybind";
		tooltip = "Defalt keybind is num9";
		tag = "RTX";
		variable = "CustomKeybind";
		defaultKeys[] = {{0x14,0}}; // Keybind: 6 
		code = "call RTX_fnc_keyEvent;";
	};
};

class CfgFunctions
{
	class RTX
	{
		class Client 
		{
			file = "RestartTimerEX\Client";
			isclient = 1; 
			class keyEvent {}; 
			class initClient {}; 
		};		
		class Server 
		{
			file = "RestartTimerEX\Server";
			isclient = 1; 
			class initServer {}; 
		};
	};
};