<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio5</title>
            </head>
            <body>
                <h2>Listado de notas por alumno</h2>
                <ol>
                    <xsl:for-each select="escuela/alumnos/alumno">
                        <li>
                            <h3><xsl:value-of select="nombre"/></h3>
                            <p>
                                <xsl:for-each select="notas/nota">
                                    <xsl:value-of select="@asignatura"/>: <xsl:value-of select="."/>
                                    <br/>
                                </xsl:for-each>
                            </p>
                        </li>   
                    </xsl:for-each>
                </ol>
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>