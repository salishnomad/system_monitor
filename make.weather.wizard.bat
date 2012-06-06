@setlocal
@echo off
@set JAVA_HOME=C:\JDev.11.1.1.5.0\jdk160_24
@set WHERE_IS_ANT=C:\JDev.11.1.1.5.0\jdeveloper\ant\bin
:: set JAVA_OPTIONS=-Dhttp.proxyHost=www-proxy.us.oracle.com -Dhttp.proxyPort=80
call %WHERE_IS_ANT%\ant %JAVA_OPTIONS% -buildfile build.weather.wizard.xml %*
:: pause
@endlocal