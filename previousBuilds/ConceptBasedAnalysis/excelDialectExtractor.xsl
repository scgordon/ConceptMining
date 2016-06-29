<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:cw="http://www.hdfgroup.org/metadata/published/xsd" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="text"/>
    <xsl:param name="DialectToExtract"/>
    <!--<xsl:key name="DialectTags" match="/cw:crosswalks/cw:spiral/cw:item/@dialect/text()" use="//cw:path"/>-->

    <xsl:template match="/">
        <xsl:text>Concept,</xsl:text>
        <xsl:value-of select="$DialectToExtract"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:for-each select="//cw:name">
            <xsl:sort select="../cw:name"/>
            <xsl:value-of select="."/>
            <xsl:text>,</xsl:text>
            <xsl:choose>
                <xsl:when test="following-sibling::cw:path[@dialect = $DialectToExtract]">
                    <xsl:value-of select="1"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text>0</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="text()"/>
</xsl:stylesheet>
