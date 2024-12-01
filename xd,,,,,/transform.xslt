<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/hobby">
        <html>
            <head>
                <title>Moje Hobby</title>
            </head>
            <body>
                <h1><xsl:value-of select="about"/></h1>
                <h2>Podróże</h2>
                <ul>
                    <xsl:for-each select="travel/place">
                        <li>
                            <strong><xsl:value-of select="name"/></strong>: <xsl:value-of select="description"/>
                        </li>
                    </xsl:for-each>
                </ul>
                <h2>Książki</h2>
                <ul>
                    <xsl:for-each select="books/book">
                        <li>
                            <strong><xsl:value-of select="title"/></strong> autorstwa <xsl:value-of select="author"/>: <xsl:value-of select="description"/>
                        </li>
                    </xsl:for-each>
                </ul>
                <h2>Filmy</h2>
                <ul>
                    <xsl:for-each select="movies/movie">
                        <li>
                            <strong><xsl:value-of select="title"/></strong> w reżyserii <xsl:value-of select="director"/>: <xsl:value-of select="description"/>
                        </li>
                    </xsl:for-each>
                </ul>
                <h2>Zwierzęta</h2>
                <ul>
                    <xsl:for-each select="animals/animal">
                        <li>
                            <strong><xsl:value-of select="name"/></strong>: <xsl:value-of select="description"/>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet><?xml version="1.0" encoding="UTF-8"?>