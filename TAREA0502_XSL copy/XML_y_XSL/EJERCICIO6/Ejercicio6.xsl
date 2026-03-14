<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio6</title>
            </head>
            <body>
                <h2>Media de notas</h2>
                    <xsl:for-each select="escuela/alumnos/alumno">
                            <xsl:value-of select="nombre"/> - Media: 
                            <xsl:value-of select="sum(notas/nota) div count(notas/nota)"/>
                            <br/>
                    </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>