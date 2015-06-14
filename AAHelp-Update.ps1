#requires -Version 2
<#
        .SYNOPSIS
        Controller Script to Update and launch AA Help.

        .DESCRIPTION
        Controller Script to Update and launch AA Help.

        .EXAMPLE
        .\Temp\AAHelp-Update.ps1

        .LINK
        Links to further documentation

        .NOTES
        Version : 0.1
        Date Created : 13/06/2015
        Created by : Graham Beer

#> 

. C:\Temp\AAHelp-Functions.ps1

Try 
{
    Update-AAHelpFile -UpdateFile 'C:\AAHELP\SCCM\PIXPAAHELP1.exe' -ShortcutFile 'C:\AAHELP\SCCM\AAHelpUpdater.lnk' -Verbose
}
Catch 
{
    throw $_
}
Finally
{
    Start-AAHelp -Program 'C:\AAHELP\system\lib\AAStart.exe' -Arguments 'AAHELP' -Verbose
}
