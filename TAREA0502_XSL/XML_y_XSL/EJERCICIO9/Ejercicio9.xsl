<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />

    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio 9</title>
            </head>
            <body>
                <h2>Listado alumnos nota Matemáticas &gt; 9</h2>
                <ul>
                    <xsl:for-each select="escuela/alumnos/alumno">
                        <xsl:for-each select="notas/nota">
                            <xsl:if test="@asignatura='Matemáticas'">
                                <xsl:if test=". &gt; 9">
                                    <li>
                                        <xsl:value-of select="../../nombre"/>
                                    </li>
                                </xsl:if>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>