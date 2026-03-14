<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />

    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio 8</title>
            </head>
            <body>
                <h2>Listado alumnos joven/avanzado</h2>
                <ol>
                    <xsl:for-each select="/escuela/alumnos/alumno">
                        <li>
                        <h3><xsl:value-of select="nombre"/></h3>
                            <xsl:choose>
                                <xsl:when test="edad &lt; 16">Estudiante joven</xsl:when>
                                <xsl:otherwise>Estudiante avanzado</xsl:otherwise>
                            </xsl:choose>
                        </li>
                    </xsl:for-each>
                </ol>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>