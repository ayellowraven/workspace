<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />
	
	<!--
		The API requires several pieces of data.
		This is hard-coded since it doesn’t change
		to reduce server load.
	
	-->
	
	<xsl:template match="/">
		<response>
		    <metadata>
		    <!-- Book title -->
		    	<title>Book title</title>
		    <!-- Book Author -->
		    	<author>Book author</author>

		    <!-- Original publish date -->
		    	<original-published>YYYY--MM-DD</orginal-published>
		    <!-- Original publisher -->
		    	<original-publisher>Original publisher</original-publisher>

			<!-- Date you published -->
		    	<platen-published>YYYY--MM-DD</platen-published>

		    	<url><xsl:value-of select="$root"/></url>
		    	<text-path><xsl:value-of select="$root"/>/chapter</text-path>

			<!-- OCLC: http://en.wikipedia.org/wiki/OCLC -->
		    	<oclc>OCLC Number</oclc>
		    	
		    <!-- In case there are multiple ISBNs -->
		    	<isbn>
		    		<item>ISBN number</item>
		    	</isbn>

			<!-- URL of source materials -->
		    	<sources>
		    		<item>http://example.com/</item>
		    	</sources>
		    <!-- Tags: as many or few as you think are pertinent -->
		    	<tags>
		    		<item>tag</item>
		    		<item>tag</item>
		    	</tags>
		    <!-- Languages -->
		    	<languages>
		    		<item>English</item>
		    	</languages>
			<!-- Short description -->
		    	<description>
					<!-- Plain text is fine -->
		    	</description>
		    	<api>
		    		<version>1</version>
		    		<root><xsl:value-of select="$root"/>/api/v1</root>
		    		<docs><xsl:value-of select="$root"/>/api/</docs>
		    	</api>
		    	<section>
		    		<name>API Root</name>
		    	</section>
		    </metadata>
	    	<chapter>
	    		<last-updated>
	    			<xsl:value-of select="$ds-api-updated-chapter.system-modification-date"/>
	    		</last-updated>
	    		<total>
	    			<xsl:value-of select="//api-updated-chapter/pagination/@total-entries"/>
	    		</total>
	    		<url><xsl:value-of select="$root"/>/api/v1/chapter</url>
	    	</chapter>
	    </response>
	</xsl:template>
</xsl:stylesheet>