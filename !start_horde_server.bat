@echo off
::///////////////////////////////////////////////////////////////////////
::///  	         S1x Server Configuration start-up file	  		      ///
::///////////////////////////////////////////////////////////////////////
::// This config best view with Notepad++ or other non-windows notepad //
::///////////////////////////////////////////////////////////////////////
::// 	Your edited server.cfg in the "main" folder goes here  	       //
:://	This is were you edit your hostname, map & gamemodes from.     //
::///////////////////////////////////////////////////////////////////////


set ServerFilename=server_horde.cfg


:://///////////////////////////////////////////////////////////////////////////
::// 	What port do you want the server to run on?			  		         //
:://	You must port forward this port & allow it through your firewall     //
:://///////////////////////////////////////////////////////////////////////////
set port=27016


:: Either put the batch in the S1x install dir, or change the value below to the S1x install dir
set XLABS_AW_INSTALL=%~dp0

:: Remove this line, if automatic updates on start should be disabled
start /W xlabs.exe -update


::///////////////////////////////////////////////////////////////////////
:://You're done!! WARNING!!! Don't mess with anything below this line  //
::///////////////////////////////////////////////////////////////////////

set GAME_EXE=%localappdata%\xlabs\data\s1x\s1x.exe
start %GAME_EXE% -dedicated +survival 1 +set net_port "%port%" +exec %ServerFilename% +map_rotate
