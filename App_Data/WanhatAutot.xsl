<xsl:stylesheet version="1.0"  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  <xsl:template match="Wanhatautot">
    <Wanhatautot>
      <xsl:apply-templates/>
    </Wanhatautot>
  </xsl:template>
  <xsl:template match="Auto">
    <Auto>
      <xsl:attribute name="aid">
        <xsl:value-of select="aid"/>
      </xsl:attribute>
      <xsl:attribute name="rekkari">
        <xsl:value-of select="rekkari"/>
      </xsl:attribute>
      <xsl:attribute name="merkki">
        <xsl:value-of select="merkki"/>
      </xsl:attribute>
      <xsl:attribute name="malli">
        <xsl:value-of select="malli"/>
      </xsl:attribute>
      <xsl:attribute name="vm">
        <xsl:value-of select="vm"/>
      </xsl:attribute>
      <xsl:attribute name="myyntiHinta">
        <xsl:value-of select="myyntiHinta"/>
      </xsl:attribute>
      <xsl:attribute name="sisaanOstoHinta">
        <xsl:value-of select="sisaanOstoHinta"/>
      </xsl:attribute>
    </Auto>
  </xsl:template>
</xsl:stylesheet>