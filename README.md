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
$ git clone https://github.com/OlivierLD/oliv-soft-project-builder.git
$ cd oliv-soft-project-builder

$ ./build.all
</pre>

Note: If a proxy is required, set it in `gradle.properties`.

If the build process went well, you can try to run:
<pre>
$ cd olivsoft
$ gradle :navigation-desktop:run
</pre>
or 
<pre>
$ cd olivsoft
$ gradle :weatherwizard:run
</pre>

You might see some exceptions in the console, <b>this is expected</b>. It comes from some config files not found (created on exit), or from some resources on the net that cannot be reached if you are behind a firewall...
