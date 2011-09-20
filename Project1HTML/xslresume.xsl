<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
<html>
  <head>
    <title>Ruth Zinsmeister</title>
  </head>
  <body>
    <h1><xsl:value-of select="resume/person/name"/></h1>
    <img src="ruth.jpg" alt="ruth photo" align="right"/>

    <h2>Recent Work</h2>
    <xsl:apply-templates select="resume/work_experience/job" />

    <h2>Community Involvement</h2>
    <xsl:apply-templates select="resume/community_involvement/involvement" />

    <h2>Contact Information</h2>   
    <h3><xsl:value-of select="resume/person/email"/></h3>

  </body>
</html>
</xsl:template>

<xsl:template match="job">
    <h3><xsl:value-of select="company_name" /></h3>
    <h4><xsl:value-of select="job_title" /></h4>
</xsl:template>

<xsl:template match="involvement">
    <h3><xsl:value-of select="organization" /></h3>
    <ul>
      <li><xsl:value-of select="position" /></li>
    </ul>

</xsl:template>
</xsl:stylesheet>
