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
        <th>Emp-Des</th>
        </tr>
        <xsl:for-each select="Emp">
        <xsl:if test="Name=''">
        <xsl:message terminate="yes">
         Name Should not be empty
        </xsl:message>
            
        </xsl:if>
        <tr>
        <td><xsl:value-of select="@Eid"/></td>
        <td><xsl:value-of select="Name"/></td>
        <td><xsl:value-of select="Salary"/></td>
        <td><xsl:value-of select="Age"/></td>
        <td>
        <xsl:choose>
            <xsl:when test="Salary>100000">
                Senior Emp
            </xsl:when>
            <xsl:when test="Salary>65000">
                Junior Emp
            </xsl:when>
            <xsl:otherwise>
                Emp
            </xsl:otherwise>
        </xsl:choose>
        </td>
        </tr>
        </xsl:for-each>
        </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
