<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="tvc-news-2 pt" id="news2">
            <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
        </section>
    </xsl:template>
    <xsl:template match=""></xsl:template>
</xsl:stylesheet>