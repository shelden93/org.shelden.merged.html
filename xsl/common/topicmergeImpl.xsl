<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:ot-placeholder="http://suite-sol.com/namespaces/ot-placeholder" xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
	exclude-result-prefixes="xs dita-ot">

	<xsl:import href="plugin:org.dita.pdf2:xsl/common/topicmerge.xsl"/>

	<xsl:template match="*[contains(@class, ' bookmap/toc ')][not(@href)]" priority="2" mode="build-tree"/>
	<xsl:template match="*[contains(@class, ' bookmap/indexlist ')][not(@href)]" priority="2" mode="build-tree"/>
	<xsl:template match="*[contains(@class, ' bookmap/tablelist ')][not(@href)]" priority="2" mode="build-tree"/>
	<xsl:template match="*[contains(@class, ' bookmap/figurelist ')][not(@href)]" priority="2" mode="build-tree"/>
	<xsl:template match="*[contains(@class, ' bookmap/glossarylist ')][not(@href)]" priority="2" mode="build-tree"/>
</xsl:stylesheet>
