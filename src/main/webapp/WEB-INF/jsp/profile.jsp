
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/sessionHeader.jsp" />
  
 <figure id="profile-picture" class="image is-3by1	
" >
  <img src='{{src}}'>
</figure> 
  
  <div id="tile-wrapper" class="tile is-ancestor">
  <div class="tile is-parent">
    <article class="tile is-child box">
      <p class="title">Workout of the Day</p>
      <p class="subtitle" >
      1 mile run<br>
      20 pull-ups<br>
      50 push-ups<br>
      100 squats<br>
      1 mile run<br>
      </p>
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
      <div class="content">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare magna eros, eu pellentesque tortor vestibulum ut. Maecenas non massa sem. Etiam finibus odio quis feugiat facilisis.</p>
      </div>

<c:import url="/WEB-INF/jsp/footer.jsp" />