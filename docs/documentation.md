# general
<hr />
<b>Two major things to do at the start</b>
<ol>
	<li>`@echo off` turn off echo to avoid unnecessary messages</li>
	<li>`SETLOCAL` set local variable, which means they will be cleaned out of storage after run</li>
</ol>
<br /><br />

# directory iterations
<hr />
...all files including the ones in subfolder but folders: `for /R %f in (*) do @echo %f`<br />
...files in current dir: `for %f in (.\*) do @echo %f`<br />
...subdirs in current dir: `for /D %s in (.\*) do @echo %s`<br />
...files in current and all subdirs: `for /R %f in (.\*) do @echo %f`<br />
...subdirs in current and all subdirs: `for /R /D %s in (.\*) do @echo %s`
<br /><br />

# command
<hr />
`tree` shows directory structure<br />
`tree /F` shows directory and file structure
<br /><br />

# batch for loop
<hr />
<ol>
	<li>`for %%f in (*) do call :scan %%f` call a label in for loop</li>
	<li>after collect input from /p, assign it to a label with parameter, otherwise the variable will be assigned in delay</li>
</ol>