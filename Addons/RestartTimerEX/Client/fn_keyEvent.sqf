/***************************************************************/
/**************** Server Restart Warnings **********************/
/************************* By SLI ******************************/
/***************************************************************/


    _restart	 = ["RestartText","RTX"] call BASE_fnc_getCfgValue;
    _restartTime = parseNumber (["RestartTime","RTX"] call BASE_fnc_getCfgValue); 


    _color1 = ["RestartTimeColor","RTX"] call BASE_fnc_getCfgValue;


    _serverTime = (round(_restartTime-(serverTime)/60));
    _hours = (floor(_serverTime/60));
    _minutes = (_serverTime - (_hours * 60));

	switch(_minutes) do
	{
		case 9: {_minutes = "09"};
		case 8: {_minutes = "08"};
		case 7: {_minutes = "07"};
		case 6: {_minutes = "06"};
		case 5: {_minutes = "05"};
		case 4: {_minutes = "04"};
		case 3: {_minutes = "03"};
		case 2: {_minutes = "02"};
		case 1: {_minutes = "01"};
		case 0: {_minutes = "00"};
	};

   _RTXshow = hintSilent parseText format [
	"<t color='#%1' align='left' size='0.9'>%4</t><t align='right' size='0.9'>%2H:%3M</t><br/>",
	_color1,	        /*  %1  */
    _hours,				/*  %2  */
    _minutes,			/*  %3  */				
	_restart		    /*  %4  */
    ];
	
uiSleep 10;

terminate _RTXshow;

