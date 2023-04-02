<<<<<<< HEAD
<%@page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>

=======
<%@page import="com.edu.teamproject.domain.Notice"%>
<%@page import="java.util.List"%>
<%@page import="com.edu.teamproject.util.PageManager"%>
<%@page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<%
	List<Notice> noticeList=(List)request.getAttribute("noticeList");
	
	PageManager pm = new PageManager();
	pm.init(noticeList, request);
%>
>>>>>>> 66788b52ecdce04801df04ea6bf088be96bd4f12
<!-- beautify ignore:start -->
<html lang="en" class="light-style layout-menu-fixed" dir="ltr"
	data-theme="theme-default"
	data-assets-path="/resources/admin/ass/assets/"
	data-template="vertical-menu-template-free">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

<<<<<<< HEAD
<title>Dashboard - Analytics | Sneat - Bootstrap 5 HTML Admin
	Template - Pro</title>
=======
<title>공지사항</title>
>>>>>>> 66788b52ecdce04801df04ea6bf088be96bd4f12

<!-- header_link -->
<%@include file="../inc/header_link.jsp"%>
</head>

<body>
	<!-- Layout wrapper -->
	<div class="layout-wrapper layout-content-navbar">
		<div class="layout-container">
			<!-- Menu -->

			<%@include file="../inc/menu.jsp"%>

			<!-- / Menu -->

			<!-- Layout container -->
			<div class="layout-page">
				<!-- Navbar -->

				<nav
					class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
					id="layout-navbar">

<<<<<<< HEAD

=======
>>>>>>> 66788b52ecdce04801df04ea6bf088be96bd4f12
					<div
						class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
						<a class="nav-item nav-link px-0 me-xl-4"
							href="javascript:void(0)"> <i class="bx bx-menu bx-sm"></i>
						</a>
					</div>

					<div class="col-2">
						<select id="selectTypeOpt" class="form-select color-dropdown">
							<option value="bg-primary">선택▼</option>
							<option value="bg-secondary">제목</option>
							<option value="bg-success">작성자</option>
							<option value="bg-success">작성일</option>
						</select>
					</div>
					<div class="col-1"></div>

					<div class=" navbar-nav-right d-flex align-items-center"
						id="navbar-collapse">
						<!-- Search -->
						<div class="col-10 navbar-nav align-items-center">
							<div class="nav-item d-flex align-items-center">
								<i class="bx bx-search fs-4 lh-0"></i> <input type="text"
									class="form-control border-0 shadow-none"
									placeholder="Search..." aria-label="Search..." />
							</div>
						</div>

						<div>
<<<<<<< HEAD
							<button id="showToastPlacement" class="btn btn-primary d-block">검색</button>
=======
							<button id="bt_search" class="btn btn-primary d-block">검색</button>
>>>>>>> 66788b52ecdce04801df04ea6bf088be96bd4f12
						</div>
						<!-- /Search -->

					</div>
				</nav>

				<!-- / Navbar -->

				<!-- Content wrapper -->
				<div class="container">
					<div class="row">
						<!-- Content -->

						<div class="table-responsive text-nowrap">
							<table class="table table-striped">
								<thead>
									<tr>
										<th>No</th>
										<th>제목</th>
										<th>작성자</th>
										<th>작성일</th>
									</tr>
								</thead>
								<tbody class="table-border-bottom-0">
<<<<<<< HEAD
									<tr>
										<td><i class="fab fa-angular fa-lg text-danger me-3"></i>
											<strong>3</strong></td>
										<td>알립니다.</td>
										<td>관리자</td>
										<td>2023-03-08</td>
									</tr>
									<tr>
										<td><i class="fab fa-angular fa-lg text-danger me-3"></i>
											<strong>2</strong></td>
										<td>알립니다.</td>
										<td>관리자</td>
										<td>2023-03-08</td>
									</tr>
									<tr>
										<td><i class="fab fa-angular fa-lg text-danger me-3"></i>
											<strong>1</strong></td>
										<td>알립니다.</td>
										<td>관리자</td>
										<td>2023-03-08</td>
									</tr>
=======
								<%int curPos=pm.getCurPos(); %>
								<%int num=pm.getNum(); %>
								<%for(int i=0; i<pm.getPageSize(); i++){ %>
									<%if(num<1)break; %>
										<%Notice notice = noticeList.get(curPos++); %>
										<tr>
											<td><i class="fab fa-angular fa-lg text-danger me-3"></i>
												<strong><%= num-- %></strong></td>
											<td><a id="bt_detail" href="/admin/notice/detail?notice_idx=<%=notice.getNotice_idx() %>"><%=notice.getTitle() %></a></td>
											<td>관리자</td>
											<td><%=notice.getRegdate().substring(0,10) %></td>
										</tr>
								<%} %>
>>>>>>> 66788b52ecdce04801df04ea6bf088be96bd4f12
								</tbody>
							</table>
							
							<div class="demo-inline-spacing">
								<div class="row">
									<div class="col-sm-10">
										<nav aria-label="Page navigation">
											<ul class="pagination">
<<<<<<< HEAD
												<li class="page-item prev"><a class="page-link"
													href="javascript:void(0);"><i
														class="tf-icon bx bx-chevron-left"></i></a></li>
												<li class="page-item"><a class="page-link"
													href="javascript:void(0);">1</a></li>
												<li class="page-item"><a class="page-link"
													href="javascript:void(0);">2</a></li>
												<li class="page-item active"><a class="page-link"
													href="javascript:void(0);">3</a></li>
												<li class="page-item"><a class="page-link"
													href="javascript:void(0);">4</a></li>
												<li class="page-item"><a class="page-link"
													href="javascript:void(0);">5</a></li>
												<li class="page-item next"><a class="page-link"
													href="javascript:void(0);"><i
														class="tf-icon bx bx-chevron-right"></i></a></li>
=======
												<%if(pm.getTotalPage()<pm.getFirstPage()-1){ %>
													<li class="page-item prev"><a class="page-link"
														 href="/admin/notice/list?currentPage=<%=pm.getFirstPage()-1%>"><i
														 class="tf-icon bx bx-chevron-left"></i></a></li>
												<%}else{ %>
														<li class="page-item prev"><a class="page-link"
															 href="javascript:alert('이전페이지가 없습니다')"><i
														 	class="tf-icon bx bx-chevron-left"></i></a></li>
												<%} %>
												
												<%for(int i=pm.getFirstPage(); i<pm.getLastPage(); i++){ %>
												<%if(i>pm.getTotalPage())break; %>
													<li class="page-item<%if(i==pm.getCurrentPage()){%>active<%}%>"><a class="page-link"
														 href="list?currentPage=<%=i%>"><%=i %></a></li>
												<%} %>
												
												<%if(pm.getTotalPage()>pm.getLastPage()+1){ %>
													<li class="page-item next"><a class="page-link"
														 href="/admin/notice/list?currentPage<%=pm.getLastPage()+1%>"><i
														 class="tf-icon bx bx-chevron-right"></i></a></li>
												<%}else{ %>
														<li class="page-item next"><a class="page-link"
															 href="javascript:alert('마지막페이지 입니다.');"><i
															 class="tf-icon bx bx-chevron-right"></i></a></li>
												<%} %>
>>>>>>> 66788b52ecdce04801df04ea6bf088be96bd4f12
											</ul>
										</nav>
									</div>
									<div class="col-sm-2">										
<<<<<<< HEAD
										<button type="button" class="btn btn-primary">등록</button>
									</div>
							</div>
=======
										<button type="button" class="btn btn-primary" id="bt_regist">등록</button>
									</div>
								</div>
>>>>>>> 66788b52ecdce04801df04ea6bf088be96bd4f12
							</div>
						</div>
					</div>
				</div>
				<!-- / Content -->

				<!-- Content wrapper -->

<<<<<<< HEAD

=======
>>>>>>> 66788b52ecdce04801df04ea6bf088be96bd4f12
				<!-- Footer -->
				<%@include file="../inc/footer.jsp"%>
				<!-- / Footer -->

				<div class="content-backdrop fade"></div>
			</div>
			<!-- Content wrapper -->
		</div>
		<!-- / Layout page -->
	</div>

	<!-- Overlay -->
	<div class="layout-overlay layout-menu-toggle"></div>
	</div>
	<%@include file="../inc/footer_link.jsp"%>
</body>
<<<<<<< HEAD
</html>
=======
<script type="text/javascript">
$(function(){
	$("#bt_regist").click(function(){
		location.href="/admin/notice/registform";	
	});
	
	$("");
	
});
</script>
</html>











>>>>>>> 66788b52ecdce04801df04ea6bf088be96bd4f12