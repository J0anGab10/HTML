<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio7</title>
            </head>
            <body>
                <h2>Listado de rendimiento Asignaturas por alumnos</h2>
                <ul>
                    <xsl:for-each select="escuela/alumnos/alumno">
                    <h2><xsl:value-of select="nombre"/></h2>
                        <xsl:for-each select="notas/nota">
                            <li>
                                <xsl:value-of select="@asignatura"/>
                                <xsl:if test=". &gt;= 8.5"> : Excelente
                                <br/>
                                </xsl:if>
                            </li>
                        </xsl:for-each>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>