<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="/data">
	<h1><xsl:value-of select="$page-title"/></h1>
	
	<section role="main">
		<ol>
			<xsl:apply-templates select="toc-all-chapters/entry"/>
		</ol>
	</section>
</xsl:template>

<xsl:template match="toc-all-chapters/entry">
	<li>
		<a>
			<xsl:attribute name="href">
				<xsl:value-of select="order"/>
			</xsl:attribute>
			<xsl:value-of select="title"/>
		</a>
	</li>
</xsl:template>

</xsl:stylesheet>