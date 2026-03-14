<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />

    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio 10</title>
            </head>
            <body>
                <h2>Listado alumnos y lista de asignatura no ordenada </h2>
                <ol>
                    <xsl:for-each select="/escuela/alumnos/alumno">
                        <li>
                        <h3><xsl:value-of select="nombre"/></h3>
                            <ul>
                                <xsl:for-each select="notas/nota">
                                    <li>
                                        <xsl:value-of select="@asignatura"/>
                                    </li>
                                </xsl:for-each>
                            </ul>
                        </li>
                    </xsl:for-each>
                </ol>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>