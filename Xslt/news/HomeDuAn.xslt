<!-- <?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="home-project-complete pt">
            <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>	
        </section>
    </xsl:template>
    <xsl:template match="Zone">
        <div class="container">
            <div class="article-title-red-line">
                <p><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></p>
            </div>
            <div class="row">
                <div class="col-lg-9">
                    <div class="row">
                        <xsl:apply-templates select="News" mode="News1"></xsl:apply-templates>
                       
                    </div>
                </div>
                <div class="col-lg-3">
                    <xsl:apply-templates select="News" mode="News2"></xsl:apply-templates>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="News1">
        <xsl:if test="position()&gt;0 and position()&lt;3">
            <xsl:apply-templates select="News" mode="News1-a"></xsl:apply-templates>
        </xsl:if>
        <xsl:if test="position()&gt;2 and position()&lt;6">
            <xsl:apply-templates select="News" mode="News1-b"></xsl:apply-templates>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="News1-a">
        <div class="col-sm-6">
            <div class="figure-project">
                <div class="figure-image">
                    <div class="wrapper">
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <img>
                                <xsl:attribute name="src">
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </a>
                    </div>
                </div>
                <figcaption>
                    <time><xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of></time>
                    <h3 class="text-left">
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </a>
                    </h3>
                    <p><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></p>
                </figcaption>
            </div>
        </div>
        
    </xsl:template>
    <xsl:template match="News" mode="News1-b">
        <div class="col-sm-6 col-lg-4">
            <div class="figure-project">
                 <div class="figure-image">
                    <div class="wrapper">
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <img>
                                <xsl:attribute name="src">
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </a>
                    </div>
                </div>
                <figcaption>
                    <time><xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of></time>
                    <h3 class="text-left">
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </a>
                    </h3>
                    <p><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></p>
                </figcaption>
            </div>
        </div>
        
    </xsl:template>
    <xsl:template match="News" mode="News2">
        <div class="home-project-complete-banner">
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
            </a>
        </div>
    </xsl:template>
</xsl:stylesheet> -->