#   Aria2.conf

##  Explanation for different files
1.  aria2.conf: it contains configurations for aria2. Follow the notice within the conf file
2.  aria2.log: aria2 log file, always log under appending mode. When "log-level" set to "debug", it may grow into a monster.
3.  aria2.session: for breakpoint Continuingly support
4.  **Boot.bat: _set / cancel autorun_**
5.  Start.vbs: the script for autorun, with log file size check now. It should be run only once everytime
6.  Start.bat: batch file for start an aria2 instance, without log-size check
7.  Restart.bat: terminate (all) aria2 instance(s), and start a new aria2 instance, without log-size check
8.  Stop.bat: terminate (all) aria2 instance(s) at once
9.  Status.bat: check the current status of aria2 instance(s).

##  Setup
Suggest to use [Chocolatey](https://chocolatey.org/docs/installation) to install aria2 on Windows: `choco install aria2`\
Put these files under any dir writeable by common users, otherwise logging and session may fail, e.g., I put mine at _C:\Users\dingp\Documents\aria2_\
For detailed documentation: pls refer to [Aria2 Manual](https://aria2.github.io/manual/en/html/index.html)

##  GUI
Many available online, I found this very handy after trying out several: [Aria2 for Edge](https://microsoftedge.microsoft.com/addons/detail/aria2-for-edge/jjfgljkjddpcpfapejfkelkbjbehagbh) 
