<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spotify Clone</title>
    <link rel="stylesheet" href="styles/style.css">
    <link rel="shortcut icon" href="./img/Spotify_favicon.png" type="image/x-icon">
</head>
<body>
    <div class="sidebar">
        <div class="logo">
            <a href="">
                <img src="./img/Spotify Logo.png" alt="Logo">
            </a>
        </div>

        <div class="navigation">
            <!-- Navigation content... -->
            <ul>
                <li>
                    <a href="#">
                        <span class="fa fa-home"></span>
                        <span>Home</span>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/LoginServlet">
                        <span class="fa fa-search"></span>
                        <span>Search</span>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/LoginServlet">
                        <span class="fa fas fa-book"></span>
                        <span>Your Library</span>
                    </a>
                </li>
            </ul>
        </div>

        <div class="navigation">
            <!-- Additional navigation content... -->
            <ul>
                <li>
                    <a href="${pageContext.request.contextPath}/LoginServlet">
                        <span class="fa fa-home"></span>
                        <span>Create Playlist</span>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/LoginServlet">
                        <span class="fa fa-search"></span>
                        <span>Liked Songs</span>
                    </a>
                </li>

            </ul>
        </div>

        <div class="policies">
            <!-- Policies content... -->
            <ul>
                <li>
                    <a href="${pageContext.request.contextPath}/LoginServlet">Cookies</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/LoginServlet">Privacy</a>
                </li>
            </ul>
        </div>
    </div>

    <div class="main-container">
        <div class="topbar">
            <div class="prev-next-buttons">
                <!-- Prev and Next buttons... -->
                <button type="button" class="fa fas fa-chevron-left"></button>
                <button type="button" class="fa fas fa-chevron-right"></button>
            </div>

            <div class="navbar">
                <!-- Navbar content... -->
				<ul>
                    <li>
                        <a href="${pageContext.request.contextPath}/RegisterServlet">Sign Up</a>
                    </li>
                </ul>
                <ul>
                    <li>
                        <a href="${pageContext.request.contextPath}/LoginServlet">Login</a>
                    </li>
                </ul>
            </div>
        </div>

        <div class="spotify-playlists">
            <h2>Spotify Playlists</h2>

            <div class="list">
                <!-- Playlist items... -->
                <div class="item">
                    <img src="./img/Today's Top Hits.jpg" />
                    <div class="play">
                        <span class="fa fa-play"></span>
                    </div>
                    <h4>Today's Top Hits</h4>
                    <p>Olivia Rodrigo is on top of the Hottest 50!</p>
                </div>

                <div class="item">
                    <img src="./img/RapCaviar.jpg" />
                    <div class="play">
                        <span class="fa fa-play"></span>
                    </div>
                    <h4>RapCaviar</h4>
                    <p>New Music from Cardi B, Megan Thee Stallion an...</p>
                </div>

                <div class="item">
                    <img src="./img/All Out 2010s.jpg" />
                    <div class="play">
                        <span class="fa fa-play"></span>
                    </div>
                    <h4>All out 2010s</h4>
                    <p>The biggest spmgs pf tje 2010s.</p>
                </div>

                <div class="item">
                    <img src="./img/Rock Classics.jpg" />
                    <div class="play">
                        <span class="fa fa-play"></span>
                    </div>
                    <h4>Rock Classics</h4>
                    <p>Rock Legends & epic songs that continue to...</p>
                </div>

                <div class="item">
                    <img src="./img/Chill Hits.jpg" />
                    <div class="play">
                        <span class="fa fa-play"></span>
                    </div>
                    <h4>Chill Hits</h4>
                    <p>Kick back to the best new and recent chill hits</p>
                </div>

                <div class="item">
                    <img src="./img/Viva Latino.jpg" />
                    <div class="play">
                        <span class="fa fa-play"></span>
                    </div>
                    <h4>Viva Latino</h4>
                    <p>Today's top Latin hits elevando nuestra...</p>
                </div>



                <div class="item">
                    <img src="./img/All Out 80s.jpg" />
                    <div class="play">
                        <span class="fa fa-play"></span>
                    </div>
                    <h4>All out 80s</h4>
                    <p>The biggest songs of the 1980s. Cover: Michael...</p>
                </div>
            </div>
        </div>

        <div class="spotify-playlists">
                       <h2>Focus</h2>
            <div class="list">
                <div class="item">
                    <img src="./img/Peaceful Piano.jpg" />
                    <div class="play">
                        <span class="fa fa-play"></span>
                    </div>
                    <h4>Peaceful Piano</h4>
                    <p>Peaceful piano to help you slow down, breath...</p>
                </div>

                <div class="item">
                    <img src="./img/Deep Focus.jpg" />
                    <div class="play">
                        <span class="fa fa-play"></span>
                    </div>
                    <h4>Deep Focus</h4>
                    <p>Keep calm and focus with ambient and post-...</p>
                </div>

                <div class="item">
                    <img src="./img/Instrumental Study.jpg" />
                    <div class="play">
                        <span class="fa fa-play"></span>
                    </div>
                    <h4>Instrumental Study</h4>
                    <p>Focus with soft study music in the background.</p>
                </div>



                <div class="item">
                    <img src="./img/Focus Flow.jpg" />
                    <div class="play">
                        <span class="fa fa-play"></span>
                    </div>
                    <h4>Focus Flow</h4>
                    <p>Uptempo instrumental hip hop beats</p>
                </div>

                <div class="item">
                    <img src="./img/Beats to think to.jpg" />
                    <div class="play">
                        <span class="fa fa-play"></span>
                    </div>
                    <h4>Beats to think to</h4>
                    <p>Focus with melodic techno and tech house.</p>
                </div>

                <div class="item">
                    <img src="./img/Reading Adventure.jpg" />
                    <div class="play">
                        <span class="fa fa-play"></span>
                    </div>
                    <h4>Reading Adventure</h4>
                    <p>Scores and soundtracks for daring quests, epic...</p>
                </div>

                <div class="item">
                    <img src="./img/Workday Lounge.jpg" />
                    <div class="play">
                        <span class="fa fa-play"></span>
                    </div>
                    <h4>Workday Lounge</h4>
                    <p>Lounge and chill out music for your workday</p>
                </div>
            </div>

                <!-- Focus playlist items... -->
            </div>
        </div>

        <div class="spotify-playlists">
            <h2>Sound of India</h2>
            <div class="list">
                <div class="item">
                    <img src="./img/The Sound of Mumbai.jpg" />
                    <div class="play">
                        <span class="fa fa-play"></span>
                    </div>
                    <h4>The Sound of Mum...</h4>
                    <p>The songs that define, unite and distinguish...</p>
                </div>

                <div class="item">
                    <img src="./img/The Sound of Kolkata.jpg" />
                    <div class="play">
                        <span class="fa fa-play"></span>
                    </div>
                    <h4>The Sound of Kolka...</h4>
                    <p>The songs that define, unite and distinguish...</p>
                </div>

                <div class="item">
                    <img src="./img/The Sound of Delhi.jpg" />
                    <div class="play">
                        <span class="fa fa-play"></span>
                    </div>
                    <h4>The Sound of Delhi...</h4>
                    <p>The songs that define, unite and distinguish...</p>
                </div>

                <div class="item">
                    <img src="./img/The Sound of Bengaluru.jpg" />
                    <div class="play">
                        <span class="fa fa-play"></span>
                    </div>
                    <h4>The Sound of Ben...</h4>
                    <p>The songs that define, unite and distinguish...</p>
                </div>

                <div class="item">
                    <img src="./img/The Sound of Chennai.jpg" />
                    <div class="play">
                        <span class="fa fa-play"></span>
                    </div>
                    <h4>The Sound of Chen...</h4>
                    <p>The songs that define, unite and distinguish...</p>
                </div>

                <div class="item">
                    <img src="./img/The Sound of Hyderabad.jpg" />
                    <div class="play">
                        <span class="fa fa-play"></span>
                    </div>
                    <h4>The Sound of Hyde...</h4>
                    <p>The songs that define, unite and distinguish...</p>
                </div>


            </div>

            <hr>
        </div>
    </div>


    <script src="https://kit.fontawesome.com/ef9a692198.js" crossorigin="anonymous"></script>
</body>
</html>
