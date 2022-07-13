<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<%@ include file="/include/lib.jsp"%>
<style>
#wr_con {
	margin-top: 40px;
}

#wr_content {
	height: 1000px;
}

#side_bar {
	height: 480px;
	width: 230px;
	margin: auto;
	text-align: center;
}

#side_bar div {
	border: 1px solid black;
	height: 75px;
	position: relative;
	top: 250px;
	cursor: pointer;
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: gray;
}

#content_back {
	background-color: gray;
	width: 100%;
	height: 200px;
	display: inline-block;
}

#content_back_con {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-around;
	padding-top: 120px;
}

#content_2 {
	margin-top: 55px;
}
</style>
</head>
<body>
	<%@ include file="/include/header.jsp"%>
	<%@ include file="/include/Nav.jsp"%>
	<div class="container-fluid">
		<div id="wr_con" class="container">
			<div id="wr_content" class="row">
				<div id="side" class="col-3">
					<div id="side_bar">
						<div id="chest">
							<h4>chest</h4>
						</div>
						<div id="back">
							<h4>shoulder</h4>
						</div>
						<div id="shoulder">
							<h4>back</h4>
						</div>
						<div id="arm">
							<h4>arm</h4>
						</div>
						<div id="lower body">
							<h4>lower body</h4>
						</div>
					</div>
				</div>
				<div class="col-9">
					<div id="content_back">
						<div id="content_back_con">
							<div class="card" style="width: 16rem;">
								<img src="..." class="card-img-top" alt="...">
								<div class="card-body">
									<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
								</div>
							</div>
							<div class="card" style="width: 16rem;">
								<img src="..." class="card-img-top" alt="...">
								<div class="card-body">
									<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
								</div>
							</div>
							<div class="card" style="width: 16rem;">
								<img src="..." class="card-img-top" alt="...">
								<div class="card-body">
									<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
								</div>
							</div>
							<div id="content_2" class="card" style="width: 16rem;">
								<img src="..." class="card-img-top" alt="...">
								<div class="card-body">
									<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
								</div>
							</div>
							<div id="content_2" class="card" style="width: 16rem;">
								<img src="..." class="card-img-top" alt="...">
								<div class="card-body">
									<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
								</div>
							</div>
							<div id="content_2" class="card" style="width: 16rem;">
								<img src="..." class="card-img-top" alt="...">
								<div class="card-body">
									<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/include/Footer.jsp"%>
</body>
</html>