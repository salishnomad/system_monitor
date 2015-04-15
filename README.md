![project-builder](./build.system.jpg "Project Builder") 
# oliv-soft-project-builder
This project will help you to build the Weather Wizard and the Navigation Desktop.
- It requires Gradle and Java

You obviously need git (ie on Windows, you need the git bash tool).

To proceed:

- Clone this project in your environment
- Modify the script named `set.gradle.env` to match your context
- Run the script named `build.all`

<pre>
Welcome to Git (version 1.8.4-preview20130916)

Run 'git help git' to display the help index.
Run 'git help <command>' to display help for specific commands.

oliv@OLIV-LAP /path.to/OlivSoft.git
<b>$ git clone https://github.com/OlivierLD/oliv-soft-project-builder.git</b>
Cloning into 'oliv-soft-project-builder'...
remote: Counting objects: 254, done.
remote: Compressing objects: 100% (69/69), done.
remote: Total 254 (delta 38), reused 2 (delta 2), pack-reused 182Receiving objects:  75% (191/254), 20.62 MiB | 971.00 KiB/s
Receiving objects: 100% (254/254), 20.87 MiB | 984.00 KiB/s, done.
Resolving deltas: 100% (146/146), done.
Checking connectivity... done

oliv@OLIV-LAP /path.to/OlivSoft.git
<b>$ cd oliv-soft-project-builder/
$ chmod +x set.gradle.env
$ chmod +x checkout.sh
$ chmod +x build.all
$ chmod +x proxy.*</b>

oliv@OLIV-LAP /path.to/OlivSoft.git/oliv-soft-project-builder (master)
<b>$ cat set.gradle.env</b>
#!/bin/bash
export PATH=/d/gradle-1.9/bin:$PATH
export JAVA_HOME=/d/Java/jdk1.7.0_45
echo Gradle Env is set.
gradle --version

oliv@OLIV-LAP /path.to/OlivSoft.git/oliv-soft-project-builder (master)
<b>$ ./build.all</b>
Setting env
Gradle Env is set.

------------------------------------------------------------
Gradle 1.9
------------------------------------------------------------

Build time:   2013-11-19 08:20:02 UTC
Build number: none
Revision:     7970ec3503b4f5767ee1c1c69f8b4186c4763e3d

Groovy:       1.8.6
Ant:          Apache Ant(TM) version 1.9.2 compiled on July 8 2013
Ivy:          2.2.0
JVM:          1.7.0_45 (Oracle Corporation 24.45-b08)
OS:           Windows 7 6.1 amd64

Step 1 - Checkout
Checking out javanmeaparser...
[....]

BUILD SUCCESSFUL

Total time: 36.317 secs

oliv@OLIV-LAP /path.to/OlivSoft.git/oliv-soft-project-builder (master)
$
</pre>

<b>Note</b>: If a proxy is required, set it in `gradle.properties`, before running `build.all`.

If the build process went well, you can try to run:
<pre>
$ . ./set.gradle.env
$ cd olivsoft
$ gradle :navigation-desktop:run
</pre>
or 
<pre>
$ . ./set.gradle.env
$ cd olivsoft
$ gradle :weatherwizard:run
</pre>

You might see some exceptions in the console, <b>this is expected</b>. It comes from some config files not found (created on exit), or from some resources on the net that cannot be reached if you are behind a firewall...

<b>Note</b>: The document above is a quick summary for you to get started. If you intend to do any modificaiton on the code, it is probably a good idea to branch the repository... "This machine has no brain, please use your own".
