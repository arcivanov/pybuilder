where python
python --version

choco config set --name="'webRequestTimeoutSeconds'" --value="'3600'"
choco config set --name="'commandExecutionTimeoutSeconds'" --value="'14400'"
choco upgrade chocolatey
choco list --localonly

choco install -y %PYTHON_PACKAGE% --version=%PYTHON_VERSION% --timeout=14400

set PATH=%PYTHON_BIN%\Scripts;%PYTHON_BIN%;%PATH%

pip install virtualenv
python -m virtualenv --upgrade-embed-wheels
python -m virtualenv --copies \venv

set PATH=%VENV_DIR%;%PATH%

where python
python --version
where pip
pip --version
C:\venv\scripts\python -c "import sys; import os.path; print(os.path.realpath(sys.executable), sys.prefix, sys.exec_prefix, sys.base_prefix, sys.base_exec_prefix)"
