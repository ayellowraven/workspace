<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!--
	These templates are for calling page-specific javascript
	(Which should be included at the bottom of master.xsl)
-->

<xsl:template name="page-js">
<xsl:param name="slug" value="book"/>
<script>

<!-- Include JS when on any chapter -->
<xsl:if test="//params/ds-current-chapter/item">
	$("button#set-bookmark").click(function(){
		$.cookie('<xsl:value-of select="name(//*[substring(name(), string-length(name()) - 8) = '-bookmark'])"/>', '<xsl:value-of select="$ds-current-chapter"/>', {path:'/'});
		$("a.entypo-bookmark").addClass('active').attr("href", window.location.pathname).attr("title","Chapter <xsl:value-of select="$ds-current-chapter"/>");
		$("button#set-bookmark").attr('disabled', true).attr('title','');
		$("#toc a.bookmark").removeClass('bookmark').attr("title",function(a,val){return val.replace("[Bookmarked] ","");});
		$("#toc a.bookmark span").replace("[Bookmarked] ","");
	});

</xsl:if>

<!-- Include JS when on the table of contents -->
<xsl:if test="//params/current-path = '/chapter'">

</xsl:if>
</script>

</xsl:template>

</xsl:stylesheet>