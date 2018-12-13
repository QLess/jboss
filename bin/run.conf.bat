REM 
REM  Specify the maximum file descriptor limit, use "max" or "maximum" to use
REM  the default, as queried by the system.
REM 
REM  Defaults to "maximum"
REM 
REM MAX_FD="maximum"

REM 
REM  Specify the profiler configuration file to load.
REM 
REM  Default is to not load profiler configuration file.
REM 
REM PROFILER=""

REM 
REM  Specify options to pass to the Java VM.
REM 
if "%JAVA_OPTS%"=="" (set JAVA_OPTS=-Xms512m -Xmx4096m -XX:+UseG1GC -XX:MaxGCPauseMillis=200 -Dsun.rmi.dgc.client.gcInterval=3600000 -Dsun.rmi.dgc.server.gcInterval=3600000 -Djava.net.preferIPv4Stack=true)

set JAVA_OPTS=%JAVA_OPTS% -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=8888

set JAVA_OPTS=%JAVA_OPTS% -Djboss.platform.mbeanserver -Djavax.management.builder.initial=org.jboss.system.server.jmx.MBeanServerBuilderImpl -Dcom.sun.management.jmxremote

set JAVA_OPTS=%JAVA_OPTS% -Dcom.linebuster.server.qa.SMSChecker.disable=true -Dfilter.redirectUnsecureIpad=true -Dsun.net.inetaddr.ttl=300 -Dfile.encoding=UTF8 -Dwebsocket.port=8000

REM  Cache DNS lookups for 5 min (instead of default of "forever")
set JAVA_OPTS=%JAVA_OPTS% -Dsun.net.inetaddr.ttl=300 -Dsun.net.inetaddr.negative.ttl=300

REM  Default character encoding on Mac is not UTF-8, so set it explicitly
set JAVA_OPTS=%JAVA_OPTS% -Dfile.encoding=UTF8

REM set JAVA_OPTS=%JAVA_OPTS% -Dcom.linebuster.internationalDialingPrefix=022

REM set JAVA_OPTS=%JAVA_OPTS% -Dcom.linebuster.salesNumber=16612684408

set JAVA_OPTS=%JAVA_OPTS% -Dcom.linebuster.googleMapsKey=ABQIAAAAjUpGL9ccCekij5E7acs6ERQzhTJXthnkM2CPhp2BOWd0QJ30RBQHFOp3_3LwsSyJhrvGlz0gtppSlg

set JAVA_OPTS=%JAVA_OPTS% -Djavax.net.ssl.keyStore=C:/dev/tools/qless-jboss/server/default/conf/qless_keystore.jks -Djavax.net.ssl.keyStorePassword=qlessqless

REM FIXME QLess probably needs this, but Windows is being a pain about the pipe char... 
REM JAD set JAVA_OPTS=%JAVA_OPTS% -Dcom.linebuster.WhiteListTestIP=66.135.41.245|69.174.245.201

set JAVA_OPTS=%JAVA_OPTS% -Dcom.linebuster.server.keydb.location=C:\cygroot\asterisk\etc\qless\keydb.properties
