<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
<html>
  <head>
    <title>Ruth Zinsmeister</title>
  </head>
  <body bgcolor="CCFFCC">
   
    <h1 align="center"><xsl:value-of select="resume/person/name"/></h1>
    <h3 align="center"><xsl:value-of select="resume/person/email"/></h3>
    
    <h2>About</h2>
<blockquote>
    <p>Ruth currently studies at the Illinois Institute of Technology. She did her undergraduate work at the <xsl:value-of select="resume/education/university/uniname"/>.  She majored in <xsl:value-of select="resume/education/university/major"/> and minored in <xsl:value-of select="resume/education/university/minor"/>.  She last worked for <xsl:value-of select="resume/work_experience/job/company_name"/>. </p>
</blockquote>

    <h2>Interests</h2>
<blockquote>
    <p>Ruth has been involved in organzations such as: <xsl:apply-templates select="resume/community_involvement"/>
</p>
</blockquote>
    
  </body>
</html>
</xsl:template>

<xsl:template match="involvement">
    <p align="center"><xsl:value-of select="organization" /></p>
 
</xsl:template>
</xsl:stylesheet>
