<xsl:stylesheet version="1.0"  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
<xsl:template match="palautteet">
    <palautteet>
      <xsl:apply-templates/>
    </palautteet>
  </xsl:template>
<xsl:template match="palaute">
  <palaute>
    <xsl:attribute name="pvm">
      <xsl:value-of select="pvm"/>
    </xsl:attribute>
    <xsl:attribute name="tekija">
      <xsl:value-of select="tekija"/>
    </xsl:attribute>
    <xsl:attribute name="opittu">
      <xsl:value-of select="opittu"/>
    </xsl:attribute>
    <xsl:attribute name="haluanoppia">
      <xsl:value-of select="haluanoppia"/>
    </xsl:attribute>
    <xsl:attribute name="hyvaa">
      <xsl:value-of select="hyvaa"/>
    </xsl:attribute>
    <xsl:attribute name="parannettavaa">
      <xsl:value-of select="parannettavaa"/>
    </xsl:attribute>
    <xsl:attribute name="muuta">
      <xsl:value-of select="muuta"/>
    </xsl:attribute>
  </palaute>
</xsl:template>
</xsl:stylesheet>
