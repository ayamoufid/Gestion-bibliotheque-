<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Liste des emprunts des livres</h2>
                <ul>
                    <xsl:for-each select="biblio/etudiant">
                        <li>
                            <xsl:value-of select="@prenom"/>,<xsl:value-of select="@nom"/>
                        </li>
                        <table border="1" width="80%">
                            <tr>
                                <th>ID</th><th>TITRE</th><th>DATEEMPRUNT</th><th>RENDU</th>
                                <xsl:for-each select="livre[@rendu='OUI']">
                                    <tr>
                                        <td><xsl:value-of select="@id"/></td>
                                        <td><xsl:value-of select="@titre"/></td>
                                        <td><xsl:value-of select="@dateEmprunt"/></td>
                                        <td><xsl:value-of select="@rendu"/></td>
                                    </tr>
                                </xsl:for-each>
                            </tr>
                        </table>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>