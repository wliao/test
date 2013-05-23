<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<h2>Zip Codes</h2>
	<table border="5">
	<tr bgcolor="lime">
		<th>City</th>
		<th>Zip</th>
		<th>County</th>
	</tr>
	
	<!--Loops each element and fills out the table-->
	<xsl:for-each select="regionData/region">
	
	<!--adding a sort to the table listing-->
	<xsl:sort select="zip"/>
	
	<!--select only if this parameters meet requirement-->
	<xsl:if test="county='San Mateo'">
	
	<tr>
		<td><xsl:value-of select="city"/></td>
		<td><xsl:value-of select="zip"/></td>
		<td><xsl:value-of select="county"/></td>
	</tr>
	
	</xsl:if>
	
	</xsl:for-each>
	
	</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>