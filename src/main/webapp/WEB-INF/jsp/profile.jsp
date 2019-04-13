
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:choose> 
<c:when test="${sessionScope.currentUser.userName == null}">
<c:import url="/WEB-INF/jsp/header.jsp" />
</c:when>
<c:when test="${sessionScope.currentUser.userName == 'admin'}">
<c:import url="/WEB-INF/jsp/adminHeader.jsp" />
</c:when>
<c:otherwise>
<c:import url="/WEB-INF/jsp/sessionHeader.jsp" />
</c:otherwise>
</c:choose>

<body>
<h2>Welcome, ${sessionScope.currentUser.userName}</h2>
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
      
      
      </p>
      <!-- <p id="demo"></p> -->
      <h1><time>00:00:00</time></h1>
<button id="start">start</button>
<button id="stop">stop</button>
<button id="clear">clear</button>
<script>
var h1 = document.getElementsByTagName('h1')[0]
    start = document.getElementById('start'),
    stop = document.getElementById('stop'),
    clear = document.getElementById('clear'),
    seconds = 0, minutes = 0, hours = 0,
    t;

function add() {
    seconds++;
    if (seconds >= 60) {
        seconds = 0;
        minutes++;
        if (minutes >= 60) {
            minutes = 0;
            hours++;
        }
    }
    
    h1.textContent = (hours ? (hours > 9 ? hours : "0" + hours) : "00") + ":" + (minutes ? (minutes > 9 ? minutes : "0" + minutes) : "00") + ":" + (seconds > 9 ? seconds : "0" + seconds);

    timer();
}
function timer() {
    t = setTimeout(add, 1000);
}
timer();


/* Start button */
onclick = timer.start(); 

/* Stop button */
stop.onclick = function() {
    clearTimeout(t);
}

/* Clear button */
clear.onclick = function() {
    h1.textContent = "00:00:00";
    seconds = 0; minutes = 0; hours = 0;
}</script>
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
</body>
</html>