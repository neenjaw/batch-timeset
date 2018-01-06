@ECHO OFF

REM Batch Script to get NTP time and set the local clock to the same

REM -- time HH:MM:SS.SS AM/PM
REM -- date MM/DD/YYYY
REM -- net time
REM -- w32tm

net stop w32time

w32tm /unregister

w32tm /register

net start w32time

w32tm /resync
