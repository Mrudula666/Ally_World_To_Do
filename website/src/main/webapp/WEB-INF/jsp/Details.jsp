<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ally World</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
</head>
<style type="text/css">
th, td {
	padding: 1px;
	background-color: lightblue
}
</style>
<body>
	<jsp:include page="navigation.jsp" />
	<div id="fullContainer">
		<!--  for the posts -->
		<div class="col-xs-12 col-md-12 col-lg-12 individualsection mTop10">
			<div class="col-xs-12 col-md-12 col-lg-12 individualsection mTop10">
			</div>
		</div>
	</div>
	<style>
@
-webkit-keyframes placeHolderShimmer { 0% {
	background-position: -468px 0
}

100%
{
background-position


:


468
px


0
}
}
@
keyframes placeHolderShimmer { 0% {
	background-position: -468px 0
}

100%
{
background-position


:


468
px


0
}
}
.timeline-item {
	background: scrollbar;
	border: 1px solid;
	border-color: #e5e6e9 #dfe0e4 #d0d1d5;
	border-radius: 3px;
	padding: 12px;
	margin: 0 auto;
	max-width: 60%;
	min-height: 200px;
}

.fa {
	font-size: 50px;
	cursor: pointer;
	user-select: none;
}

.fa:hover {
	color: darkblue;
}

hr.new {
	border: 10px solid blue;
	border-radius: 5px;
}
</style>
	<div class="timeline-wrapper">
		<div class="timeline-item">
			<c:form action="updatePostForUpdate" modelAttribute="post">
				<jstl:forEach var="post" items="${post}">
					<p>
						<b>Status</b>: ${post.status}
					</p>
					<p>
						<b>Date</b>: ${post.date}
					</p>
					<p>
						<b>Image</b>: <img src=${post.url}>
					</p>
					<p>
						<a href="updatelikes?postId=${post.postId}"
							class="btn btn-block btn-primary"> <i class="fa fa-thumbs-up">Like</i>
							${fn:length(post.likes.likesProfileId)}
						</a>
						<%-- <b>Likes</b>: ${fn:length(post.likes.likesProfileId)} --%>
					</p>
					<p>
						<!-- <button type="submit" class="btn btn-default"                                 onclick="location.href='\search.php?search='+ document.getElementById('search').value+'&search2='+document.getElementById('search2').value;">                                 Search</button> -->
						<!--  -->
						<a
							onclick="location.href='comment?postId=${post.postId}&comment='+document.getElementById('com').value;"
							class="btn btn-blockbtn-primary"> <i class="fas fa-comments">Comments</i>
						</a> <i class="fa">&#xf086;</i> <input type="text" name="comment"
							id="com"> <b>Comments:</b>: ${post.comments.comment}
					</p>
					<p>
					<i class="fas fa-trash" aria-hidden="true">Delete Post</i></p>
					<hr class="new">
				</jstl:forEach>
			</c:form>
		</div>
	</div>
	<script type="text/javascript">
		function aa() {
			alert();
		}
	</script>
</body>
</html>
</body>
</html>