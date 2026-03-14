<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />

    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio 12</title>
            </head>
            <body>
                <h2>Tabla de notas por asignatura + * &lt; 6 </h2>
                <table border="5">
                    <tr>
                        <th>Nombre</th>
                        <th>Matemáticas</th>
                        <th>Historia</th>
                        <th>Física</th>
                    </tr>
                    <xsl:for-each select="escuela/alumnos/alumno">
                        <tr>
                            <td><xsl:value-of select="nombre"/></td>
                            <xsl:for-each select="notas/nota">
                                <td>
                                    <xsl:value-of select="."/>
                                    <xsl:if test=". &lt; 6">*</xsl:if>
                                </td>
                            </xsl:for-each>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>