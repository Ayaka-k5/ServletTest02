<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ツイート一覧</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
	<div class="container">
		<h1>ツイート一覧</h1>
		<%-- 新規投稿 --%>
		<p>
			<a href="new_tweet.jsp">新規投稿</a>
		</p>

		<%-- ツイート投稿の結果 --%>
		<p>
			<c:choose>
				<c:when test="${authorLength > 255}">
                    ツイートの投稿に失敗しました<br>
				</c:when>
				<c:otherwise>
                    ツイートの投稿に成功しました<br>
				</c:otherwise>
			</c:choose>
		</p>

		<%-- ツイート一覧の表示 --%>
		<ul class="tweet-list">
			<li>
				<div class="tweet-content">
					<p>
						<c:forEach var="tweet" items="${tweets}">
					${tweet.content}<br>
					</p>

					<p class="tweet-info">
						投稿者：${tweet.author}_投稿日時：${tweet.postedAt}<br>
						</c:forEach>
					</p>
				</div>
			</li>
		</ul>
	</div>
</body>
</html>
