<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="/common/taglib.jsp"  %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password</title>
    <%@ include file="/common/head.jsp"  %>
</head>
<body>
<%@ include file="/common/header.jsp"  %>
    <div class="container-fluid tm-mt-60">
        <div class="row tm-mb-50">
            <div class="col-lg-12 col-12 mb-5">
            <center><h2 class="tm-text-primary mb-5">Forgot Password</h2></center>                    
            		<div class="form-group">
                        <input type="email" id="email" name="email" class="form-control rounded-0" placeholder="Email" required />
                    </div>
                    <div class="form-group tm-text-right">
                        <button type="submit" id="sendBtn" class="btn btn-primary">Send</button>
                    </div>
                    <h5 style=" color : red" id="messageReturn"></h5>              
            </div>
        </div>
    </div> <!-- container-fluid, tm-container-content -->
    <%@ include file="/common/footer.jsp"  %>
</body>
<script>
	$('#sendBtn').click(function(){
		$('#messageReturn').text('');
		var email = $('#email').val();
		var formData = {'email' : email};
		$.ajax({
			url: 'forgotPass',
			type: 'POST',
			data: formData
		}).then(function(data){
			$('#messageReturn').text('Password has been reset, please check your eamil')
			setTimeout(function(){
				window.location.href = 'http://localhost:8080/Asignment/index';
			}, 5*1000);
		}).fail(function(error){
			$('#messageReturn').text("Your information is not correct, try again");
		});
	});
</script>
</html>