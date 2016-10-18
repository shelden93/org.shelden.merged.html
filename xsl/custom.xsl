<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot" xmlns:dita2html="http://dita-ot.sourceforge.net/ns/200801/dita2html"
	xmlns:ditamsg="http://dita-ot.sourceforge.net/ns/200704/ditamsg" exclude-result-prefixes="xs dita-ot dita2html ditamsg" version="2.0">

	<xsl:template match="*[contains(@class, ' map/map ')]">
		<xsl:call-template name="chapter-setup"/>
	</xsl:template>

	<!--	TODO: Please, edit this template for correct fetching document title.	-->
	<xsl:template name="generateChapterTitle">
		<!-- Title processing - special handling for short descriptions -->
		<title>
			<xsl:call-template name="gen-user-panel-title-pfx"/>
			<!-- hook for a user-XSL title prefix -->
			<xsl:variable name="maptitle">
				<xsl:apply-templates select="/*[contains(@class, ' map/map ')]/@title" mode="text-only"/>
			</xsl:variable>
			<xsl:variable name="maintitle">
				<xsl:apply-templates select="/*[contains(@class, ' topic/topic ')]/*[contains(@class, ' topic/title ')]" mode="text-only"/>
			</xsl:variable>
			<xsl:variable name="ditamaintitle">
				<xsl:apply-templates select="/dita/*[contains(@class, ' topic/topic ')][1]/*[contains(@class, ' topic/title ')]" mode="text-only"/>
			</xsl:variable>
			<xsl:choose>
				<xsl:when test="string-length($maptitle) > 0">
					<xsl:value-of select="normalize-space($maptitle)"/>
				</xsl:when>
				<xsl:when test="string-length($maintitle) > 0">
					<xsl:value-of select="normalize-space($maintitle)"/>
				</xsl:when>
				<xsl:when test="string-length($ditamaintitle) > 0">
					<xsl:value-of select="normalize-space($ditamaintitle)"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:text>***</xsl:text>
					<xsl:apply-templates select="." mode="ditamsg:no-title-for-topic"/>
				</xsl:otherwise>
			</xsl:choose>
		</title>
		<xsl:value-of select="$newline"/>
	</xsl:template>
</xsl:stylesheet>
