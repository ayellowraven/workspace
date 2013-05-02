<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!--
	Replace [Author] with the name of the author.
-->

<xsl:template name="page-title">
	<xsl:choose>
	<!-- Home page -->
		<xsl:when test="$current-page = 'Home'">
			<xsl:text>[Author]’s</xsl:text>
		</xsl:when>
	<!-- Table of Contesnts -->
		<xsl:when test="$root-page = 'chapter'">
			<xsl:text>Table of Contents —</xsl:text>
		</xsl:when>
	<!-- Chapter and other book pages -->
		<xsl:when test="$root-page = 'back'">
			<xsl:choose>
			<!-- Chapter -->
				<xsl:when test="$current-page = 'chapter'">
					<xsl:text>Chapter </xsl:text>
					<xsl:value-of select="$current-chapter"/>
				</xsl:when>
			<!-- Character -->
				<xsl:when test="$current-page = 'character'">
					<xsl:value-of select="$current-character"/>
				</xsl:when>
			</xsl:choose>
		</xsl:when>
	</xsl:choose>
	<xsl:text> </xsl:text>
	<xsl:value-of select="$website-name"/>
</xsl:template>

</xsl:stylesheet>