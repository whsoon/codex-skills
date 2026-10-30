@echo off
if "%1"=="" (
  echo Usage: AI setup demo
  exit /b 1
) else if "%1"=="check" (
	if "%2"=="" (
		curl.exe --silent --show-error --fail-with-body --connect-timeout 3 --max-time 30 -X POST "http://localhost:8309/sender/check"
	) else (
		curl.exe --silent --show-error --fail-with-body --connect-timeout 3 --max-time 30 -X POST "http://localhost:8309/sender/check/%2"
	)
) else if "%1"=="setup" (
	curl.exe --silent --show-error --fail-with-body --connect-timeout 3 --max-time 30 -X POST "http://localhost:8309/sender/base/%1/%2"
) else if "%2"=="" (
	curl.exe --silent --show-error --fail-with-body --connect-timeout 3 --max-time 30 -X POST "http://localhost:8309/sender/base/%1"
) else if "%3"=="" (
	curl.exe --silent --show-error --fail-with-body --connect-timeout 3 --max-time 30 -X POST "http://localhost:8309/sender/code/%1/%2"
) else if "%4"=="" (
	curl.exe --silent --show-error --fail-with-body --connect-timeout 3 --max-time 30 -X POST "http://localhost:8309/sender/code/%1/%2/%3"
) else (
	curl.exe --silent --show-error --fail-with-body --connect-timeout 3 --max-time 30 -X POST "http://localhost:8309/sender/code/%1/%2/%3=%4"
)
