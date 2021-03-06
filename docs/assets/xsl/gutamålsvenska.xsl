<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml" exclude-result-prefixes="xs tei" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;</xsl:text>
        <xsl:text>&#xa;</xsl:text>
        <html lang="en" xml:lang="en">
            <head>
                <title> Sårken Nils u leilsystri samt Nils o gäddu: Gutamål och svenska </title>
                <link rel="stylesheet"
                    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                    crossorigin="anonymous"/>
                <link rel="stylesheet" href="assets/css/main.css"/>
                <link rel="stylesheet" href="assets/css/desktop.css"/>

                <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
            </head>
            <body>
                <header>
                    <h1>Sårken Nils u leilsystri samt Nils o gäddu </h1>
                    <h2>En barnbok på gutamål och svenska</h2>

                </header>
                <nav id="sitenav"><a href="index.html">Hem</a> | <a href="gutamål.html">Gutamål</a>
                    | <a href="svenska.html">Svenska</a> | <a href="gutamålsvenska.htm">Gutamål och
                        svenska</a> | <a href="teipdf.html">TEI och PDF</a> | </nav>
                <main>
                    <header>
                        <h3>Gutamål och svenska</h3>
                    </header>
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-6">
                                <article id="gutamål">
                                    <xsl:apply-templates select="//tei:text[@n = 2]"/>
                                </article>
                            </div>
                            <div class="col-sm-6">
                                <article id="svenska">
                                    <xsl:apply-templates select="//tei:text[@n = 3]"/>
                                </article>
                            </div>
                        </div>
                    </div>
                </main>
                <footer>
                    <div class="row" id="footer">
                        <div class="col-sm copyright">
                            <div>
                                <a href="https://creativecommons.org/licenses/by-nc-nd/2.5/se/ ">
                                    <img width="100" src="assets/img/logos/by-nc-nd.png"
                                        class="copyright_logo" alt="Creative Commons License"/>
                                </a>
                            </div>
                            <div class="copyright_text"> 2022 Hanna Reillo och Idamaria Holm. </div>
                        </div>
                    </div>
                </footer>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="tei:p">
        <xsl:apply-templates/>
        <p/>
    </xsl:template>

    <xsl:template match="tei:lb">
        <xsl:apply-templates/>
        <br/>
    </xsl:template>

    <xsl:template match="tei:div">
        <xsl:apply-templates/>
        <br/>
    </xsl:template>

    <xsl:template match="tei:entry">
        <div class="container">
            <div class="row">
                <div class="col-sm">
                    <xsl:value-of select="tei:form/tei:orth"/>
                </div>
                <div class="col-sm">
                    <xsl:value-of select="tei:sense/tei:cit/tei:quote"/>
                </div>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="tei:head">
        <p class="head">
            <xsl:apply-templates/>
        </p>
    </xsl:template>


</xsl:stylesheet>
