<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="home-project-introduce pt">
            <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
        </section>
    </xsl:template>
    <xsl:template match="Zone">
         <div class="container">
                <div class="home-project-bg-wrapper">
                    <div class="article-title-red-line-m0">
                        <p><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></p>
                    </div>
                    <xsl:apply-templates select="News"></xsl:apply-templates>
                </div>
            </div>
    </xsl:template>
    <xsl:template match="News">
        <div class="row bg-grey">
            <div class="col-lg-8">
               <h2><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></h2>
            </div>
            <div class="col-lg-4">
                <div class="home-project-text-wrapper">
                   <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>