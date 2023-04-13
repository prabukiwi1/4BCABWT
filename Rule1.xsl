<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:array="http://www.w3.org/2005/xpath-functions/array"
                xmlns:map="http://www.w3.org/2005/xpath-functions/map"
                xmlns:math="http://www.w3.org/2005/xpath-functions/math"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">
    <xsl:template match="/*" mode="#all">
        <html>
        <body>
        <h2>Employee Info</h2>
        <table border="1">
        <tr bgcolor="red">
        <th>Emp-ID</th>
        <th>Emp-Name</th>
        <th>Emp-Salary</th>
        <th>Emp-Age</th>
        </tr>
        <xsl:for-each select="Emp">
        <xsl:if test="Salary>100000">
        <tr>
        <td><xsl:value-of select="@Eid"/></td>
        <td><xsl:value-of select="Name"/></td>
        <td><xsl:value-of select="Salary"/></td>
        <td><xsl:value-of select="Age"/></td>
        </tr>
        </xsl:if>
        </xsl:for-each>
        </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>