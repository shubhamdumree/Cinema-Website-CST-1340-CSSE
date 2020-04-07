<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Apple Cineplex | Movie Listing</title>
                <link rel="website icon" href="posters/a.png" />
                <link rel="stylesheet" type="text/css" href="style.css"/>
            </head>
            <body>

                <!-- section 1 of the second page with a nav-bar. -->
                <header>
                    <div class="container">
                        <div class="top-nav">
                            <ul class="nav-list">
                                <li class="nav-item nav-item-hidden">
                                    <a href="movie.xml" class="nav-link nav-link-cinema">'</a>
                                </li>
                                <li class="nav-item">
                                    <a href="../index.html" class="nav-link">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a href="#newmovies" class="nav-link">New Movies</a>
                                </li>
                                <li class="nav-item">
                                    <a href="#playingnow" class="nav-link">Playing Now</a>
                                </li>
                                <li class="nav-item">
                                    <a href="#endingsoon" class="nav-link">Ending Soon</a>
                                </li>
                                <li class="nav-item">
                                    <div class="dropdown">
                                        <a href="#" class="nav-link">Theatres</a>
                                        <div class="dropdown-content">
                                            <p>Cineplex Bagatelle</p>
                                            <p>Cineplex Flacq</p>
                                            <p>Cineplex Port-Louis</p>
                                            <p>Cineplex Grand-Baie</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link">Support</a>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link nav-link-search">'</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </header>

                <!-- section 2 of the second page introduction with an animated text.-->
                <section style="background-color: grey;" class="intro">
                    <h3 class="h2-styling">Complete list of Movies</h3>
                    <p class="p-styling">At Apple Cineplex</p>
                </section>

                <!-- section 3 of the second page new movies table.-->
                <section id="newmovies" class="table">
                    <div>
                        <h2 class="now-h2">New Movies <br/>Now showing only at Cineplex</h2>

                        <table style="padding-left:10px;padding-right:10px" class="table-content">

                            <tr class="table-header">

                                <th style="text-align:center;font-weight:lighter">Poster</th>
                                <th style="text-align:center;font-weight:lighter">Title</th>
                                <th style="text-align:center;font-weight:lighter">Genres</th>
                                <th style="text-align:center;font-weight:lighter">Description</th>
                                <th style="text-align:center;font-weight:lighter">Director</th>
                                <th style="text-align:center;font-weight:lighter">Cast</th>
                                <th style="text-align:center;font-weight:lighter">Duration</th>
                                <th style="text-align:center;font-weight:lighter">Trailer</th>

                            </tr>

                            <xsl:for-each select="Movielist/NewMovies/Movie">
                                <tr style="padding-top: 1rem;text-align:center;font-size:1rem">

                                    <td class="poster" style="padding:10px">
                                        <img class="imgPoster">
                                            <xsl:attribute name='src'>
                                                <xsl:value-of select="Poster"/>
                                            </xsl:attribute>
                                        </img>
                                    </td>
                                    <td style="padding:30px">
                                        <xsl:value-of select="Title"/>
                                    </td>
                                    <td style="padding:30px">
                                        <xsl:value-of select="Genres"/>
                                    </td>
                                    <td style="padding:70px">
                                        <xsl:value-of select="Description"/>
                                    </td>
                                    <td style="padding:30px">
                                        <xsl:value-of select="Director"/>
                                    </td>
                                    <td style="padding:30px">
                                        <xsl:value-of select="Cast"/>
                                    </td>
                                    <td style="padding:60px">
                                        <xsl:value-of select="Duration"/>
                                    </td>
                                    <td style="padding:30px">
                                        <xsl:element name="a">
                                            <xsl:attribute name="href">
                                                <xsl:value-of select="Trailer"/>
                                            </xsl:attribute>
                                                <xsl:attribute name="target">_blank</xsl:attribute>
                                            <xsl:text>Watch Trailer now ></xsl:text>
                                        </xsl:element>
                                    </td>

                                </tr>

                            </xsl:for-each>
                        </table>
                    </div>
                </section>

                <!-- section 4 of the second page new incoming films at the cinema.-->
                <section class="coming-soon">
                    <div class="container">
                        <div class="title-white">
                            <h2 class="title-heading-white">Coming Soon</h2>
                            <h3 class="title-sub-heading-white">December 2020</h3>
                        </div>
                    </div>
                    <div class="cta">
                        <a href="https://www.youtube.com/watch?v=qSqVVswa420" target="_blank" class="cta-link-coming">Watch Trailer Now ></a>
                    </div>
                </section>

                <!-- section 5 of the second page currently playing movies table.-->
                <section id="playingnow" class="table">
                    <h2 class="now-h2">Currently Playing</h2>

                    <table style="padding-left:10px;padding-right:10px" class="table-content">

                        <tr class="table-header">

                            <th style="text-align:center;font-weight:lighter">Poster</th>
                            <th style="text-align:center;font-weight:lighter">Title</th>
                            <th style="text-align:center;font-weight:lighter">Genres</th>
                            <th style="text-align:center;font-weight:lighter">Description</th>
                            <th style="text-align:center;font-weight:lighter">Director</th>
                            <th style="text-align:center;font-weight:lighter">Cast</th>
                            <th style="text-align:center;font-weight:lighter">Duration</th>
                            <th style="text-align:center;font-weight:lighter">Trailer</th>

                        </tr>

                        <xsl:for-each select="Movielist/PlayingNow/Movie">
                            <tr>

                                <td class="poster" style="padding:10px">
                                    <img class="imgPoster">
                                        <xsl:attribute name='src'>
                                            <xsl:value-of select="Poster"/>
                                        </xsl:attribute>
                                    </img>
                                </td>
                                <td style="padding:30px">
                                    <xsl:value-of select="Title"/>
                                </td>
                                <td style="padding:30px">
                                    <xsl:value-of select="Genres"/>
                                </td>
                                <td style="padding:70px">
                                    <xsl:value-of select="Description"/>
                                </td>
                                <td style="padding:30px">
                                    <xsl:value-of select="Director"/>
                                </td>
                                <td style="padding:30px">
                                    <xsl:value-of select="Cast"/>
                                </td>
                                <td style="padding:60px">
                                    <xsl:value-of select="Duration"/>
                                </td>
                                <td style="padding:30px">
                                    <xsl:element name="a">
                                        <xsl:attribute name="href">
                                            <xsl:value-of select="Trailer"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="target">_blank</xsl:attribute>
                                        <xsl:text>Watch Trailer now ></xsl:text>
                                    </xsl:element>
                                </td>

                            </tr>

                        </xsl:for-each>
                    </table>
                </section>

                <!-- section 6 of the second page poster of trending film at Cineplex.-->
                <section class="poster-cover">
                <h2 class="poster-heading">Trending this month</h2>
                <h3 class="poster-sub-heading">Showing at all 4 Cineplex across the Island</h3>
                    <div class="cta-poster">
                        <a href="#" class="cta-link-poster">Book your tickets now ></a>
                    </div>
                    <div class="invisible">
                        <img class="invisible-img" src="posters/op1.jpg" alt="inv" />
                    </div>
                </section>

                <!-- section 7 of the second page ending soon movies table.-->
                <section id="endingsoon" class="ending-soon">
                    <h2 class="now-h2">Ending Next Month</h2>

                    <table tyle="padding-left:10px;padding-right:10px" class="table-content">

                        <tr class="table-header">

                            <th style="text-align:center;font-weight:lighter">Poster</th>
                            <th style="text-align:center;font-weight:lighter">Title</th>
                            <th style="text-align:center;font-weight:lighter">Genres</th>
                            <th style="text-align:center;font-weight:lighter">Description</th>
                            <th style="text-align:center;font-weight:lighter">Director</th>
                            <th style="text-align:center;font-weight:lighter">Cast</th>
                            <th style="text-align:center;font-weight:lighter">Duration</th>
                            <th style="text-align:center;font-weight:lighter">Trailer</th>

                        </tr>

                        <xsl:for-each select="Movielist/EndingSoon/Movie">
                            <tr>

                                <td class="poster" style="padding:10px">
                                    <img class="imgPoster">
                                        <xsl:attribute name='src'>
                                            <xsl:value-of select="Poster"/>
                                        </xsl:attribute>
                                    </img>
                                </td>
                                <td style="padding:30px">
                                    <xsl:value-of select="Title"/>
                                </td>
                                <td style="padding:30px">
                                    <xsl:value-of select="Genres"/>
                                </td>
                                <td style="padding:60px">
                                    <xsl:value-of select="Description"/>
                                </td>
                                <td style="padding:30px">
                                    <xsl:value-of select="Director"/>
                                </td>
                                <td style="padding:30px">
                                    <xsl:value-of select="Cast"/>
                                </td>
                                <td style="padding:60px">
                                    <xsl:value-of select="Duration"/>
                                </td>
                                <td style="padding:30px">
                                    <xsl:element name="a">
                                        <xsl:attribute name="href">
                                            <xsl:value-of select="Trailer"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="target">_blank</xsl:attribute>
                                        <xsl:text>Watch Trailer now ></xsl:text>
                                    </xsl:element>
                                </td>

                            </tr>

                        </xsl:for-each>
                    </table>
                </section>

                <!-- section 8 of the second page foot-ending-of-page.-->
                <footer class="end">
                    <div class="cta">
                        <a href="../index.html" class="cta-link-back">Back to Homepage</a>
                    </div>
                    <div class="f-disclaimer">
                        Copyright © 2020 Designed by Shubham Dumree.<br />
                        All rights Reserved | Sales | Refunds | Privacy Policy | Legal | Site Map <img width="22px" align="right" src="posters/mau1.png" alt="mau"/>
                    </div>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>