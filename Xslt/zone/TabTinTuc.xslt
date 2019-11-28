<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="tvc-news-2 pt" id="news2">
				<div class="container">
					<div class="article-title-red-line">
						<p><xsl:value-of select="/ZoneList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of></p>
					</div>
					<div class="main-nav">
                        <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
						
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="Zone">
        <a>
            <xsl:if test="IsActive='true'">
            <xsl:attribute name="class">
                <xsl:text disable-output-escaping="yes">active</xsl:text>
            </xsl:attribute>
            </xsl:if>
            <xsl:attribute name="href">
                <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="title">
                <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            <div class="item">
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
        
            </div>
        </a>
    </xsl:template>
</xsl:stylesheet>