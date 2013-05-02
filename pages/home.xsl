<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="/data">
	<section role="main">
		<div id="intro">
			<h1>An Introduction</h1>
			<p>Project Platen is a framework for creating digital books with APIs. It is built on top of <a href="http://getsymphony.com">Symphony CMS</a>. You do not need any <code>PHP</code> knowledge to build a book with this, However you do need some knowledge of <a href="http://www.htmldog.com/guides/html/beginner/">HTML</a>, <a href="http://compass-style.org/">SASS</a> and <a href="http://www.getsymphony.com/discuss/thread/26348/">XSLT</a>. (Some javascript knowledge or at least jQuery will also go a long way.) If all that sounds scary, don&#8217;t worry, it&#8217;s less intimidating than it sounds.</p>

			<h2>About this ebook</h2>
			<p>This is a prototype of what ebooks should be. It doesn’t use every new-fangled technique or javascript library out there (though it does use a few), nor does it make everything social for you to share on every social network with the click of a button (though you could build tools to do so with the API). This is partially because I’m not great at code, I’m a content strategist, but mostly because this book is for reading. If you want to read from cover to cover, <b>Quiet Mode</b> is built for that. But if you want to engage in more textual analysis, <b>Explore Mode</b> has a few interesting and (I think) sensible tools engage with the text and the world.</p>
			<p>Not everything works, sometimes the UI is strange or the code is broken. But that’s the point: push the boundaries of what it means to be a <del>digital</del> book while always caring for the most fundamental part of all books: let you, the reader, engage with its contents.</p>
			<p>This is not an attempt to create the best way to read all books. Books are diverse creatures, books differ in their voices, contents, and goals. The goal of <em>this</em> book is more humble: it is merely trying to create one of the best ways to read <em>this</em> story. No more, no less. [<a href="">Read the Blog Post</a>]</p>

			<h2><a href="api">API</a></h2>
			<p>You bet your boots this book has an API. You can have a basic API up and running with only a few minutes of work Outputs JSON, JSONP, and XML. [<a href="api">API Docs</a>]</p>

			<h2>Browser compatibility</h2>
			<p>While you can use any web browser to read the book.</p>

			<h2>Colophon</h2>
			<p>This book is set in <a href="http://www.google.com/fonts/specimen/Old+Standard+TT">Old Standard TT</a>, <a href="http://www.google.com/fonts/specimen/Vollkorn">Vollkorn</a>, and <a href="http://weloveiconfonts.com/#entypo">Entypo</a> using <a href="http://letteringjs.com/">Lettering.js</a>, <a href="http://compass-style.org/">Compass</a>, and your web browser.</p>
			<p>Other awesome technologies used to create this ebook: <a href="http://getsymphony.com">Symphony CMS</a>, <a href="d3js.org">d3.js</a>, and <a href="jquery.com">jQuery</a>.</p>

		</div>
		<div id="table-of-contents">
			<h1><a href="{$root}/chapter">Table of Contents</a></h1>
			<ol>
				<xsl:apply-templates select="all-chapters/entry"/>
			</ol>
		</div>
	</section>
</xsl:template>

<xsl:template match="all-chapters/entry">
	<li>
		<a>
			<xsl:attribute name="href">
				<xsl:text>chapter/</xsl:text>
				<xsl:value-of select="order"/>
			</xsl:attribute>
			<xsl:value-of select="title"/>
		</a>
	</li>
</xsl:template>
</xsl:stylesheet>