@setlocal
@SET HTDOCS=.
@SET PORT=8082

@title SERVING %~dp0%HTDOCS% on %PORT%

@start "" "http://localhost:%port%/"

@http-server %HTDOCS% -p %PORT%

@if %ERRORLEVEL% NEQ 0 (
  @echo.
  echo ####################################################################
  echo # node.js webserver not found                                      #
  echo # Please install node webserver using "npm install http-server -g" #
  echo ####################################################################
)
pause
