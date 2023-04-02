<%@page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

<!-- title -->
<title>AnimalFair</title>

<!-- header_link -->

<%@include file="../inc/header_link.jsp"%>

<%@include file="../inc/header_link.jsp"%>

</head>
<body>

	<!-- preloader -->
	<%@include file="../inc/preloader.jsp"%>

	<!-- header -->
	<%@include file="../inc/header.jsp"%>
	<!-- breadcrumb-section -->
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>Get 24/7 Support</p>
						<h1>보호소 위치</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->
	<!-- contact form -->

	<div class="container">

		<div class="row" style="padding: 30px">

			<div class="col-6" bg="yellow">
				<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
					<form class="form-inline" action="/action_page.php">
						<div class="col">
							<select id="category" class="form-control" name="category">
								<option value="">선택▼</option>
								<option value="type">지역</option>
								<option value="gender">이름</option>
							</select>
						</div>
						<div class="col">
							<input class="form-control mr-sm-2" type="text"
								placeholder="Search..">
						</div>
						<div class="col">
							<button class="btn btn-warning" type="button">Search</button>
						</div>
					</form>
				</nav>
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th>No</th>
							<th>지역</th>
							<th>이름</th>
							<th>전화번호</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>3</td>
							<td>서울</td>
							<td>서울 보호소</td>
							<td>02-1234</td>
						</tr>
						<tr>
							<td>2</td>
							<td>제주</td>
							<td>제주 보호소</td>
							<td>064-1234</td>
						</tr>
						<tr>
							<td>1</td>
							<td>강원</td>
							<td>강원 보호소</td>
							<td>033-1234</td>
						</tr>
					</tbody>
				</table>
				<div class="pagination-wrap" 	style="text-align: center; padding-bottom: 20px">
					<ul>
						<li><a href="#">Prev</a></li>
						<li><a href="#">1</a></li>
						<li><a class="active" href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">Next</a></li>
					</ul>
				</div>
			</div>
			<div class="col-6" style="background-color:yellow">맵나올 곳 </div>

		</div>

	</div>

	<!-- end contact form -->


	<!-- footer -->
	<%@include file="../inc/footer.jsp"%>

	<!-- footer_link -->
	<%@include file="../inc/footer_link.jsp"%>

</body>

</html>