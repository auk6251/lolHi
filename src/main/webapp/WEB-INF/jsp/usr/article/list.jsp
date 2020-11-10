<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<c:set var="title" value="${board.name} 게시물 리스트" />
<%@ include file="../part/head.jspf"%>



<div>총 게시물 수 :${totalCount}</div>

<div>
	<form>

		<input type="text" name="searchKeyword" placeholder="검색어를 입력해주세요"
			value="${param.searchKeyword}" /> <input type="submit" value="검색" />
	</form>
</div>


<br />

<c:forEach items="${articles}" var="article">
	<c:set var="detailUri"
		value="/usr/article/detail?id=${article.id}&listUrl=${edcodedCurrentUri}" />
	<div>
		번호 : <a href="${detailUri}">${article.id}</a>
	</div>
	<div>
		제목 : <a href="${detailUri}">${article.title}</a>
	</div>
	<div>작성자 :${article.extra.writer}</div>
	<div>
		작업 :
		<c:if test="${article.extra.actorCanDelete}">
			<a onclick="if ( confirm('삭제하시겠습니까?') == false ) return false;"
				href="doDelete?id=${article.id}">삭제</a>
		</c:if>
		<c:if test="${article.extra.actorCanModify}">
			<a href="modify?id=${article.id}">수정</a>
		</c:if>
		${article.boardId}
	</div>
	<hr />
</c:forEach>
<div>
	<a href="write">글쓰기</a>
</div>

<style>
.selected {
	color: red;
}
</style>

<h2>페이지</h2>
<div>
	<c:set var="goFirstBtnNeedShow" value="${page>pageMenuArmSize+1}" />

	<c:set var="goLastBtnNeedToShow" value="true" />

	<c:if test="${goFirstBtnNeedShow}">
		<a href="?page=1&searchKeyword=${param.searchKeyword}">◀</a>
	</c:if>

	<c:forEach var="i" begin="${pageMenuStart}" end="${pageMenuEnd}">
		<c:set var="className" value="${i == page ? 'selected' : '' }" />
		<a class="${className}"
			href="?page=${i}&searchKeyword=${param.searchKeyword}">${i}</a>

		<c:if test="${i == totalPage}">
			<c:set var="goLastBtnNeedToShow" value="false" />
		</c:if>
	</c:forEach>

	<c:if test="${goLastBtnNeedToShow}">
		<a href="?page=${totalPage }&searchKeyword=${param.searchKeyword}">▶</a>
	</c:if>

</div>
<%@ include file="../part/foot.jspf"%>




