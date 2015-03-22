For Maven and Gradle, please see the dedicated links, in the featured wiki pages section (left column, at the bottom).
# With Ant #
A bunch of Ant scripts to build the **_[Navigation Desktop](http://code.google.com/p/navigation-desktop/)_** and the **_[Weather Wizard](http://code.google.com/p/weatherwizard/)_**
<br>
<h2>Pre-requisites</h2>
<ul><li>You need an <a href='http://www.sliksvn.com/en/download'>SVN (Subversion) client</a> to download the artifacts of this project<br>
</li><li>You need a <a href='http://www.oracle.com/technetwork/java/javase/downloads/index.html'>Java Development Kit</a> (JDK)<br>
</li><li>You need <a href='http://ant.apache.org/bindownload.cgi'>Ant</a>
<br>
Notice on the left, in the wiki section, other build flavors. Maven and Gradle will take care of the dependencies.<br>
<br>
The SVN client mentioned above is used to download the artifact of <i>this</i> project, as well as later by Ant, to download <b><i>all</i></b> the required dependencies.<br>
<h2>Common part</h2>
To build all the required components, check out this project as mentioned on the <a href='http://code.google.com/p/oliv-soft-project-builder/source/checkout'>source page</a>, and below.<br>
<br>
To do so, you obviously need an SVN client. I am personally using <a href='http://www.sliksvn.com/en/download'>SlikSVN</a>.<br>
<br>
In a <b><i>new directory</i></b>, check out the code, and run the commands mentioned below.<br>
<br>
<br>
To check out:<br>
<pre><code>Prompt&gt; svn checkout http://oliv-soft-project-builder.googlecode.com/svn/trunk/ oliv-soft-project-builder-read-only<br>
Prompt&gt; cd oliv-soft-project-builder-read-only<br>
</code></pre>
<br>
<i>Note: <b>If you are behind a firewall</b></i>
</li></ul><blockquote>You can setup the proxy you need for svn by modifying the file at <code>~/.subversion/servers</code>.<br>
You need to set it under the <code>[global]</code> section.<br>
<br>
It is assumed that you have access to an SVN client on the box you run the scripts from, this SVN client executable (the one you used to check out the code) <b>must</b> be mentioned in the file named <i>build.properties</i>, before you start with the build. If not correctly modified with the svn executable full path, the build will fail.<br>
<br>
For the run part, you will need to refer to the right flavor of the communication APIs (with the serial port). This reference is also done in build.properties, in the property named <b>system.type</b>.<br>
<br>
<i>Note</i>: The scripts do <b>NOT</b> use the Ant svn task, that has too many dependencies..., that's the reason for using an svn client through the exec Ant task.<br>
<br>
Once <i>build.properties</i> has been appropriately modified, there is one last modification to make before starting the build. The build is started from a script, invoking Ant. For the Navigation Desktop, the script is named <i>make.desktop</i> (on Windows, <i>make.desktop.bat</i>). For the Weather Wizard, the script is named <i>make.weather.wizard</i> (on Windows, <i>make.weather.wizard.bat</i>).<br>
Edit this script to set two environment variables:<br>
</blockquote><ul><li><code>JAVA_HOME</code>
</li><li><code>WHERE_IS_ANT</code>
Save the script once the modifications are done.<br>
<br>
Now, you are good to go.<br>
<h2>How to build and run the Navigation Desktop</h2>
On Linux, make sure the scripts are executable if you don't want to use the <code>sh</code> command:<br>
<pre><code>Prompt&gt; chmod +x make.desktop<br>
Prompt&gt; chmod +x make.weather.wizard<br>
</code></pre>
Now you have completed the steps above, you can run:<br>
<pre><code>Prompt&gt; make.desktop all<br>
</code></pre>
If no scary message poped up, you can run:<br>
<pre><code>Prompt&gt; make.desktop run.desktop<br>
</code></pre>
The console should show up, and you can choose your applications in the <b>File</b> menu.<br>
<br>
<h2>How to build and run the Weather Wizard</h2>
Now you have completed the steps above, you can run:<br>
<pre><code>Prompt&gt; make.weather.wizard all<br>
</code></pre>
If no scary message poped up, you can run:<br>
<pre><code>Prompt&gt; make.weather.wizard run.ww<br>
</code></pre>
For the Polar Smoother, run:<br>
<pre><code>Prompt&gt; make.weather.wizard run.ps<br>
</code></pre>
<br>
<hr />