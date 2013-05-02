<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="/data">
	<section role="main">
		<xsl:apply-templates select="current-chapter/entry"/>
	</section>
	<section role="complimentary">
		<xsl:call-template name="complimentary-search"/>
    	<h1><a href="../">Table of Contents</a></h1>
		<ol>
			<xsl:apply-templates select="toc-all-chapters/entry"/>
		</ol>
	</section>

</xsl:template>

<xsl:template match="current-chapter/entry">
	<article>
		<xsl:attribute name="id">
			<xsl:text>chapter_</xsl:text>
			<xsl:value-of select="order"/>
		</xsl:attribute>
		<h1 id="h1_0"><xsl:value-of select="title"/></h1>
		<xsl:apply-templates select="text/*"/>
	</article>
</xsl:template>

<xsl:template match="text//*">
	<span class="permalink">
    	<xsl:text>[</xsl:text>
    	<a>
    		<xsl:attribute name="href">
    			<xsl:value-of select="$root"/>
    			<xsl:text>/chapter/</xsl:text>
    			<xsl:value-of select="$ds-current-chapter"/>
    			<xsl:text>#</xsl:text>
        		<xsl:value-of select="name(.)"/>
				<xsl:text>_</xsl:text>
    			<xsl:value-of select="count(preceding-sibling::*[name()=name(current())]) + 1"/>
    		</xsl:attribute>
    		<xsl:text>Permalink</xsl:text>
    	</a>
    	<xsl:text>]</xsl:text>
    </span>
	<xsl:element name="{name()}">
		<xsl:attribute name="id">
    		<xsl:value-of select="name(.)"/>
    		<xsl:text>_</xsl:text>
			<xsl:value-of select="count(preceding-sibling::*[name()=name(current())]) + 1"/>
		</xsl:attribute>
		<xsl:apply-templates/>
	</xsl:element>	
</xsl:template>

<xsl:template match="toc-all-chapters/entry">
	<li>
		<xsl:choose>
			<xsl:when test="order = $ds-current-chapter">
				<mark>
					<a>
						<xsl:attribute name="href">
							<xsl:text>../</xsl:text>
							<xsl:value-of select="order"/>
						</xsl:attribute>
						<xsl:attribute name="class">
							<xsl:value-of select="from/item/@handle"/>
							<xsl:text> entypo-bookmark</xsl:text>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:if test="order = //*[substring(name(), string-length(name()) - 8) = '-bookmark']">
								<xsl:text>[Bookmarked] </xsl:text>
							</xsl:if>
							<xsl:value-of select="order"/>
							<xsl:text>. </xsl:text>
							<xsl:value-of select="title"/>
						</xsl:attribute>
						<span>
							<xsl:value-of select="order"/>
							<xsl:text>. </xsl:text>
							<xsl:value-of select="title"/>					
						</span>
					</a>
				</mark>
			</xsl:when>
			<xsl:otherwise>
				<a>
					<xsl:attribute name="href">
						<xsl:text>../</xsl:text>
						<xsl:value-of select="order"/>
					</xsl:attribute>
    				<xsl:attribute name="class">
    					<xsl:if test="order = //*[substring(name(), string-length(name()) - 8) = '-bookmark']">
    						<xsl:text>bookmark </xsl:text>
    					</xsl:if>
    					<xsl:value-of select="from/item/@handle"/>
						<xsl:text> entypo-</xsl:text>
						<xsl:choose>
							<!-- before current -->
							<xsl:when test="order &lt; $ds-current-chapter">
								<xsl:text>doc-text-inv</xsl:text>
							</xsl:when>
							<!-- after current -->
							<xsl:when test="order &gt; $ds-current-chapter">
								<xsl:text>book</xsl:text>
							</xsl:when>
						</xsl:choose>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:if test="order = //*[substring(name(), string-length(name()) - 8) = '-bookmark']">
							<xsl:text>[Bookmarked] </xsl:text>
						</xsl:if>
						<xsl:value-of select="order"/>
						<xsl:text>. </xsl:text>
						<xsl:value-of select="title"/>
					</xsl:attribute>
					<span>
						<xsl:value-of select="order"/>
						<xsl:text>. </xsl:text>
						<xsl:value-of select="title"/>					
					</span>
				</a>
			</xsl:otherwise>
		</xsl:choose>

	</li>
</xsl:template>
</xsl:stylesheet>