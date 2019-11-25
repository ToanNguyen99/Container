<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
       <section class="tvc-nav about">
            <div class="container"> 
                <div class="nav-mobile">Danh mục<em class="mdi mdi-chevron-down"></em></div>
                <div class="main-wrap">
                    <ul> 
                        <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
                    </ul>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="Zone">
        <li >
            <!-- <xsl:attribute name="class">
                    <xsl:text>active</xsl:text>
                </xsl:attribute>
                </xsl:if>
                <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>active</xsl:text>
                </xsl:attribute>
                </xsl:if>
                <xsl:attribute name="data-nav">
                <xsl:text></xsl:text>
                <xsl:value-of select="position()"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute> -->
            <a>
                <xsl:attribute name="href">
                    
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </a>
        </li>
    </xsl:template>
</xsl:stylesheet>