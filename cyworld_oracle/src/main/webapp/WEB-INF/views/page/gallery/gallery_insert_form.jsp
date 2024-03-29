<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사진첩 작성</title>
<link rel="stylesheet" href="/cyworld_oracle/resources/css/gallery_insert.css">
<link rel="stylesheet" href="/cyworld_oracle/resources/css/reset.css">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
</head>
<body>
	<div class="container ">
		<section class="section">
			<div class="dashed-line">
				<div class="gray-background">
					<div class="main">
						<form method="POST" enctype="multipart/form-data">
							<input id="myIdx" name="idx" type="hidden" value="${ param.idx }">
							<table>
								<caption>새 글 쓰기</caption>
								
								<tr>
									<th>제목</th>
									<td><input id="galleryTitle" name="galleryTitle"></td>
								</tr>
								
								<tr>
									<th>내용</th>
									<td><textarea rows="5" cols="50" name="galleryContent" ></textarea></td>
								</tr>
								
								<tr>
									<th>파일첨부</th>
									<td><input type="file" name="galleryFile"></td>
								</tr>
								
								<tr>
									<td colspan="2">
										<input id="btn-cover" class="write" type="button" value="글쓰기" onclick="insert(this.form);" >
										<input id="btn-cover" class="cancel" type="button" value="취소" onclick="location.href='gallery.do?idx=${param.idx}'">
									</td>
								</tr>
							</table>
						</form>
					</div>
				</div>
			</div>
		</section>
	</div>
<!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ -->
	<!-- Ajax활용을 위한 js파일 로드 -->
	<script src="/cyworld_oracle/resources/js/httpRequest.js"></script>
	<script>
		// 게시글 작성
		function insert(f) {
			let galleryContent = f.galleryContent.value;
			let galleryTitle = f.galleryTitle.value;
			
			//유효성 체크
			
			if ( galleryTitle =='' ) {
				alert("제목은 입력은 필수입니다");
				return;
			}
			if ( galleryContent == '' ) {
				alert("내용 입력은 필수입니다");
				return;
			}
			
			f.action = "gallery_insert.do";
			f.submit();
		}
	</script>
</body>
</html>