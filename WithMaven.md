# With Maven #

_Warning:_ The Maven build is temporarily not working as expected. Please use Gradle or Ant until it is fixed.

---


## Pre-requisites ##
  * You need an [SVN (Subversion) client](http://www.sliksvn.com/en/download) to download the artifacts of this project. The executable **must** be in the path.
  * You need a [Java Development Kit](http://www.oracle.com/technetwork/java/javase/downloads/index.html) (JDK)
  * You need [Maven](http://maven.apache.org/download.html)
<br>
The SVN client mentioned above is used to download the artifact of <i>this</i> project, as well as later by Maven, to download <b><i>all</i></b> the required dependencies.<br>
<br>
<br>
To build all the required components, check out this project as mentioned on the <a href='http://code.google.com/p/oliv-soft-project-builder/source/checkout'>source page</a>, and below.<br>
<br>
To do so, you obviously need an SVN client. I am personally using <a href='http://www.sliksvn.com/en/download'>SlikSVN</a>.<br>
<br>
In a <b><i>new directory</i></b>, check out the code, and run the commands mentioned below.<br>
<br>
<br>
To check out:<br>
<pre><code>Prompt&gt; svn checkout http://oliv-soft-project-builder.googlecode.com/svn/trunk/ oliv.soft<br>
Prompt&gt; cd oliv.soft<br>
</code></pre>
<br>
<i>Note: <b>If you are behind a firewall</b></i>
</li></ul><blockquote>You can setup the proxy you need for svn by modifying the file at <code>~/.subversion/servers</code>.<br>
You need to set it under the <code>[global]</code> section.<br>
<br>
Now, there are 2 poms, one to download the required sub-projects, and another one to build everything.<br>
<br>
<pre><code>mvn -f weather-wizard.co.pom.xml initialize<br>
mvn -f weather-wizard.pom.xml package<br>
</code></pre>
<br>
<hr />