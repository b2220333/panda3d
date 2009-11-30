@echo off

REM
REM Verify that we can find the 'expandimports' python script
REM and the python interpreter.  If we can find both, then
REM run 'expandimports'.
REM

if not exist makepanda\expandimports.py goto :missing1
if not exist thirdparty\win-python\python.exe goto :missing2
thirdparty\win-python\python.exe makepanda\expandimports.py %*
goto done

:missing1
  echo You need to change directory to the root of the panda source tree
  echo before invoking expandimports.
  goto done

:missing2
  echo You seem to be missing the 'thirdparty' directory.  You probably checked
  echo the source code out from sourceforge.  The sourceforge repository is
  echo missing the 'thirdparty' directory.  You will need to supplement the
  echo code by downloading the 'thirdparty' directory from www.panda3d.org
  goto done

:done
