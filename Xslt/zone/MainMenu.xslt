<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
  <xsl:template match="/">
    <div class="header-wrapper-bottom">
      <ul>
        <xsl:apply-templates select="/ZoneList/Zone" mode="Zone1"></xsl:apply-templates>
      </ul>
    </div>
  </xsl:template>
  <xsl:template match="Zone" mode="Zone1">
    <li class="has-sub">
        <xsl:if test="count(Zone) > 0">
            <xsl:attribute name="class">
                <xsl:text disable-output-escaping="yes">has-sub active</xsl:text>
            </xsl:attribute>
        </xsl:if>
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
          <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
        </a>
        <xsl:if test="count(Zone) > 0">
          <ul class="nav-sub">
            <xsl:apply-templates select="Zone" mode="Zone2"></xsl:apply-templates>
          </ul>
        </xsl:if>
    </li>
  </xsl:template>
  <xsl:template match="Zone" mode="Zone2">
    <li>
      <a>
        <xsl:attribute name="href">
          <xsl:value-of select="Url"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="title">
          <xsl:value-of select="Title"></xsl:value-of>
        </xsl:attribute>
        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
      </a>
    </li>
  </xsl:template>
</xsl:stylesheet>