<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />
	<xsl:param name="url-chapter"/>
	<xsl:param name="url-id"/>

	<xsl:template match="/data">
		<response>
		
		<!-- Metadata is shortened compared to the API base -->
	    	<metadata>
		    <!-- Book title -->
		    	<title>Book title</title>
		    <!-- Book Author -->
		    	<author>Book author</author>
		    	
			<!-- Date this digital book was published -->
		    	<platen-published>YYYY--MM-DD</platen-published>

		    	<url><xsl:value-of select="$root"/></url>
		    	<text-path><xsl:value-of select="$root"/>/chapter</text-path>
	    		<api>
	    			<version>1</version>
	    			<root><xsl:value-of select="$root"/>/api/v1</root>
	    			<docs><xsl:value-of select="$root"/>/api</docs>
	    		</api>
	    		<section>
	    			<name>Chapters</name>
					<total-entries><xsl:value-of select="api-all-chapters/pagination/@total-entries"/></total-entries>
	    		</section>
	    	</metadata>
	    	<xsl:choose>
	    	
	    	<!-- When a specific chapter is being called -->
	    		<xsl:when test="$url-chapter">
	    			<xsl:choose>
	    				<xsl:when test="api-current-chapter/entry">
	    					<xsl:apply-templates select="api-current-chapter/entry"/>
	    				</xsl:when>
	    				<xsl:when test="$url-chapter &gt; 84">
	    					<error>There are only 84 chapters.</error>
	    				</xsl:when>
	    				<xsl:otherwise>
	    					<error>Something went wrong!</error>
	    				</xsl:otherwise>
	    			</xsl:choose>
	    		</xsl:when>

	    	<!-- A table of contents is provided when there is no chapter parameter -->
	    		<xsl:otherwise>
	    			<chapters>
	    				<xsl:apply-templates select="api-all-chapters/entry"/>
	    			</chapters>
	    		</xsl:otherwise>
	    	</xsl:choose>
	    </response>
	</xsl:template>
	

<!-- Table of contents -->
	<xsl:template match="api-all-chapters/entry">
		<chapter>
			<order><xsl:value-of select="order"/></order>
			<url><xsl:value-of select="$root"/><xsl:text>/chapter/</xsl:text><xsl:value-of select="order"/></url>
			<title><xsl:value-of select="title"/></title>
		</chapter>
	</xsl:template>

<!-- Specific Chapter -->	
	<xsl:template match="api-current-chapter/entry">
		<order><xsl:value-of select="order"/></order>
		<title><xsl:value-of select="title"/></title>
		<text>
			<xsl:choose>
			<!-- Serve permalink IDs if asked -->
				<xsl:when test="$url-id='yes'">
					<xsl:apply-templates select="text//*"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:copy-of select="text/*"/>
				</xsl:otherwise>
			</xsl:choose>
		</text>
	</xsl:template>

<!-- Include permalink IDs on elements -->
<xsl:template match="text//*">
	<xsl:element name="{name()}">
		<xsl:attribute name="id">
    		<xsl:value-of select="name(.)"/>
    		<xsl:text>_</xsl:text>
			<xsl:value-of select="count(preceding-sibling::*[name()=name(current())]) + 1"/>
		</xsl:attribute>
		<xsl:apply-templates/>
	</xsl:element>	
</xsl:template>

</xsl:stylesheet>