@setlocal
@echo off
@set JAVA_HOME=D:\Java\jdk1.7.0_45
@set WHERE_IS_ANT=D:\Ant.1.8\bin
:: set JAVA_OPTIONS=-Dhttp.proxyHost=www-proxy.us.oracle.com -Dhttp.proxyPort=80
call %WHERE_IS_ANT%\ant %JAVA_OPTIONS% -buildfile build.weather.wizard.xml %*
:: pause
@endlocal