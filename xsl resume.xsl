<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
<html>
  <head>
    <title>Ruth Zinsmeister</title>
  </head>
  <body>
    <h1><xsl:value-of select="resume/person/name"/></h1>

  <h2><xsl:value-of select="resume/education/university/name"/></h2>
  <h2><xsl:value-of select="resume/work_experience/job/company_name"/></h2>

  </body>

</html>



</xsl:template>

<xsl:template match="person">

</xsl:template>




</xsl:stylesheet>
