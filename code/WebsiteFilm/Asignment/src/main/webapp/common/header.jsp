<%@ page pageEncoding="utf-8"%>
    <!-- Page Loader -->
     <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Anime | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/plyr.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <div id="loader-wrapper">
        <div id="loader"></div>

        <div class="loader-section section-left"></div>
        <div class="loader-section section-right"></div>

    </div>
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <a class="navbar-brand" href="<c:url value = '/index' />">
                <i class="fas fa-film mr-2"></i>
					ONLINE ENTERTAIMENT
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto mb-2 mb-lg-0">
            <c:choose>
            	<c:when test = "${not empty sessionScope.currentUser}">
            	    <li class="nav-item">
                    	<a class="nav-link nav-link-1 active" 
                    			data-toggle="modal" data-target="#changePassModel" 
                    			aria-current="page">Welcome, ${sessionScope.currentUser.username}</a>
                	</li>
                 	<li class="nav-item">
                 	   <a class="nav-link nav-link-1" href="favorites">My Favorites</a>
               		 </li>
                	<li class="nav-item">
                   	 	<a class="nav-link nav-link-2" href="history">History</a>
                	</li>
                	<li class="nav-item">
                   		<a class="nav-link nav-link-3" href="longout">Log out</a>
                	</li>
            	</c:when>
            	<c:otherwise>
            		<li class="nav-item">
                    	<a class="nav-link nav-link-2" href="login">Login</a>
                	</li>
                	<li class="nav-item">
                    	<a class="nav-link nav-link-3" href="register">Register</a>
                	</li>
                	<li class="nav-item">
                    	<a class="nav-link nav-link-4" href="forgotPass">Forgot Password</a>
                	</li>
            	</c:otherwise>
            </c:choose>
                
            </ul>
            </div>
        </div>
    </nav>

    <div class="tm-hero d-flex justify-content-center align-items-center" data-parallax="scroll" data-image-src="<c:url value='/Home/user/img/hero.jpg'/>">

    </div>
    
    <!-- Modal -->
<div class="modal fade" id="changePassModel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Change Password</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
			<div class="form-group">
				<input type="password" name="currentPass" class="form-control rounded-0" id="currentPass" placeholder="Current password" required />
			</div>
			<div class="form-group">
				<input type="password" name="newPass" id="newPass" class="form-control rounded-0" placeholder="New password" required />
			</div>
			<h5 style="color: red" id="messageChangePass"></h5>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-warning" id="changePassBtn">Save changes</button>
      </div>
    </div>
  </div>
</div>
