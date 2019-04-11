
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" />

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
</head>
<body>
<<<<<<< HEAD
<h2>Welcome, ${sessionScope.currentUser.userName}</h2>
=======
<!--   <section class="section">
    <div class="container">
      <h1 class="title">WELCOME</h1>
      <h2 class="subtitle">
        A simple container to divide your page into <strong>sections</strong>, like the one you're currently reading
      </h2>
      <h3></h3>
    </div> 
  </section>-->
  
 <figure id="profile-picture" class="image is-3by1	
" >
  <img src='{{src}}'>
</figure> 
  
  <div id="tile-wrapper" class="tile is-ancestor">
  <div class="tile is-parent">
    <article class="tile is-child box">
      <p class="title">W.O.D.</p>
      <p class="subtitle" >
      1 mile run<br>
      20 pull-ups<br>
      50 push-ups<br>
      100 squats<br>
      1 mile run<br>
    
    <style>
    #center {
     margin: 30%  30%;
     font-family: tahoma;
     }
    .stopwatch {
         border:1px solid #000;
         background-color: #eee;
         text-align: center;
         width:656px;
         height: 230px;
         overflow: hidden;
     }
     .stopwatch span{
         display: block;
         font-size: 100px;
     }
     .stopwatch p{
         display: inline-block;
         font-size: 40px;
     }
     .stopwatch a{
       font-size:45px;
     }
     a:link,
     a:visited{
         color :#000;
         text-decoration: none;
         padding: 12px 14px;
         border: 1px solid #000;
     }
    </style>
  </head>
  <body>
      <div id="center">
            <div class="timer stopwatch"></div>
      </div>

    <script>
      const Stopwatch = function(elem, options) {
        let timer = createTimer(),
          startButton = createButton("start", start),
          stopButton = createButton("stop", stop),
          resetButton = createButton("reset", reset),
          offset,
          clock,
          interval,
          hrs = 0,
          min = 0;

        // default options
        options = options || {};
        options.delay = options.delay || 1;

        // append elements
        elem.appendChild(timer);
        elem.appendChild(startButton);
        elem.appendChild(stopButton);
        elem.appendChild(resetButton);

        // initialize
        reset();

        // private functions
        function createTimer() {
          return document.createElement("span");
        }

        function createButton(action, handler) {
          if (action !== "reset") {
            let a = document.createElement("a");
            a.href = "#" + action;
            a.innerHTML = action;
            a.addEventListener("click", function(event) {
              handler();
              event.preventDefault();
            });
            return a;
          } else if (action === "reset") {
            let a = document.createElement("a");
            a.href = "#" + action;
            a.innerHTML = action;
            a.addEventListener("click", function(event) {
              clean();
              event.preventDefault();
            });
            return a;
          }
        }

        function start() {
          if (!interval) {
            offset = Date.now();
            interval = setInterval(update, options.delay);
          }
        }

        function stop() {
          if (interval) {
            clearInterval(interval);
            interval = null;
          }
        }

        function reset() {
          clock = 0;
          render(0);
        }

        function clean() {
          min = 0;
          hrs = 0;
          clock = 0;
          render(0);
        }

        function update() {
          clock += delta();
          render();
        }

        function render() {
          if (Math.floor(clock / 1000) === 60) {
            min++;
            reset();
            if (min === 60) {
              min = 0;
              hrs++;
            }
          }
          timer.innerHTML =
            hrs + "<p>hrs</p>" + min + "<p>min</p>" + Math.floor(clock / 1000)+ "<p>sec</p>";
        }

        function delta() {
          var now = Date.now(),
            d = now - offset;

          offset = now;
          return d;
        }
      };

      // Initiating the Stopwatch
      var elems = document.getElementsByClassName("timer");

      for (var i = 0, len = elems.length; i < len; i++) {
        new Stopwatch(elems[i]);
      }
    </script>  
      
      </p>
      <!-- <p id="demo"></p> -->
      
    </article>
  </div>
  <div class="tile is-parent">
    <article class="tile is-child box">
<!--       <p class="title">CHARITY OF CHOICE</p>
 -->      <p class="subtitle"><div class="dropdown is-active">
  <div class="dropdown-trigger">
    <button class="button" aria-haspopup="true" aria-controls="dropdown-menu">
      <span><strong>Choose a Charity!</strong></span>
      <span class="icon is-small">
        <i class="fas fa-angle-down" aria-hidden="true"></i>
      </span>
    </button>
  </div>
  <div class="dropdown-menu" id="dropdown-menu" role="menu">
    <div class="dropdown-content">
      <a href="#" class="dropdown-item">
        Wounded Warriors
      </a>
      <a class="dropdown-item">
      SFWF
      </a>
      <a href="#" class="dropdown-item">
        NSF
      </a>
      <a href="#" class="dropdown-item">
        GBF
      </a>
      <a href="#" class="dropdown-item">
        USO
      </a>
    </div>
  </div>
</div></p>
    </article>
  </div>
  <div class="tile is-parent">
    <article class="tile is-child box">
      <p class="title">What's your why?</p>
      <p class="subtitle"></p>
      <input type=”text” name=”name”>,
      
      <div class="content">
        <p></p>
      </div>
    </article>
    </div>
<!--       <div class="tile is-parent">
    <article class="tile is-child box">
      <p class="title">CHARITY OF CHOICE</p>
      <p class="subtitle"><div class="dropdown is-active">
  
           <p class="title">
     Achievements!
    </p>
 
  </div>
</div></p>
    </article>
  </div> -->
  <div class="tile is-parent">
    <article class="tile is-child box">
      <p class="title">Donation Progress</p>
      <p class="subtitle"></p>
      <div id="myProgress">
  <div id="myBar"></div>
</div>


</div>
>>>>>>> aa4c8049bccb01b7f365e518a4b5748ef5a81779
</body>
</html>