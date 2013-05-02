<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />

<xsl:template match="/">
	<daynight>
	
	<!-- Defaults to binary day/night, but may be used to set different dawn/dusk styles, too -->
		<xsl:choose>
			<xsl:when test="number(translate(substring($sunrise,0,6),':','')) &lt; number(translate(substring($civil_twilight_end,0,6),':',''))">
				<xsl:choose>
					<xsl:when test="number(translate(substring($current-time,0,6),':','')) &lt; number(translate(substring($sunrise,0,6),':','')) or number(translate(substring($current-time,0,6),':','')) &gt; number(translate(substring($civil_twilight_end,0,6),':','')) ">
						<xsl:text>night</xsl:text>
					</xsl:when>
					<xsl:otherwise>
						<xsl:text>day</xsl:text>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:when>
			<xsl:otherwise>
				<xsl:choose>
					<xsl:when test="number(translate(substring($current-time,0,6),':','')) &lt; number(translate(substring($sunrise,0,6),':','')) or number(translate(substring($current-time,0,6),':','')) &gt; number(translate(substring($civil_twilight_end,0,6),':','')) ">
						<xsl:text>day</xsl:text>
					</xsl:when>
					<xsl:otherwise>
						<xsl:text>night</xsl:text>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:otherwise>
		</xsl:choose>
	</daynight>

</xsl:template>

</xsl:stylesheet>