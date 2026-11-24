@echo off
rem Builds the mod without installing Gradle (needs only JDK 21 in PATH).
set G=8.10.2
if not exist .tools\gradle-%G% (
  mkdir .tools
  powershell -Command "Invoke-WebRequest https://services.gradle.org/distributions/gradle-%G%-bin.zip -OutFile .tools\gradle.zip"
  powershell -Command "Expand-Archive .tools\gradle.zip -DestinationPath .tools"
)
call .tools\gradle-%G%\bin\gradle.bat build --no-daemon
echo JAR is in build\libs
pause
