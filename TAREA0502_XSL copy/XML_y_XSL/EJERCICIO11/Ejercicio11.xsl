<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />

    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio 11</title>
            </head>
            <body>
                <h2>Tabla de notas máximas </h2>
                <table border="5">
                    <tr>
                        <th>Nombre</th>
                        <th>Curso</th>
                        <th>Nota máxima obtenida</th>
                    </tr>
                    <xsl:for-each select="escuela/alumnos/alumno">
                        <tr>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="curso"/></td>
                            <td>
                                <xsl:for-each select="notas/nota">
                                    <xsl:sort select="." data-type="number" order="descending"/>
                                    <xsl:if test="position() = 1">
                                        <xsl:value-of select="."/>
                                    </xsl:if>
                                    </xsl:for-each> 
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>