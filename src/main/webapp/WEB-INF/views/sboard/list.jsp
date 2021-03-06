<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--<%@ page session="false" %>--%>

<%@include file="../include/header.jsp" %>

<!-- Main content -->
<section class="content">
    <div class="row">
        <!-- left column -->


        <div class="col-md-12">
            <!-- general form elements -->
            <div class='box'>
                <div class="box-header with-border">
                    <h3 class="box-title">Board List</h3>
                </div>

                <div class='box-body'>

                    <select name="searchType">
                        <option value="n"
                                <c:out value="${cri.searchType == null?'selected':''}"/>>
                            ---
                        </option>
                        <option value="t"
                                <c:out value="${cri.searchType eq 't'?'selected':''}"/>>
                            Title
                        </option>
                        <option value="c"
                                <c:out value="${cri.searchType eq 'c'?'selected':''}"/>>
                            Content
                        </option>
                        <option value="w"
                                <c:out value="${cri.searchType eq 'w'?'selected':''}"/>>
                            Writer
                        </option>
                        <option value="tc"
                                <c:out value="${cri.searchType eq 'tc'?'selected':''}"/>>
                            Title OR Content
                        </option>
                        <option value="cw"
                                <c:out value="${cri.searchType eq 'cw'?'selected':''}"/>>
                            Content OR Writer
                        </option>
                        <option value="tcw"
                                <c:out value="${cri.searchType eq 'tcw'?'selected':''}"/>>
                            Title OR Content OR Writer
                        </option>
                    </select>

                    <input type="text" name='keyword' id="keywordInput" value='${cri.keyword }'>
                    <button id='searchBtn'>Search</button>
                    <button id='newBtn'>New Board</button>

                </div>

            </div>


            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">LIST PAGING</h3>
                </div>
                <div class="box-body">
                    <table class="table table-bordered">
                        <tr>
                            <th style="width: 10px">BNO</th>
                            <th>TITLE</th>
                            <th>WRITER</th>
                            <th>REGDATE</th>
                            <th style="width: 40px">VIEWCNT</th>
                        </tr>

                        <%--<c:forEach items="${list}" var="boardVO">--%>

                        <%--<tr>--%>
                        <%--<td>${boardVO.bno}</td>--%>
                        <%--<td><a--%>
                        <%--href='/sboard/readPage${pageMaker.makeSearch(pageMaker.cri.page) }&bno=${boardVO.bno}'>--%>
                        <%--${boardVO.title} </a></td>--%>
                        <%--<td>${boardVO.writer}</td>--%>
                        <%--<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"--%>
                        <%--value="${boardVO.regdate}"/></td>--%>
                        <%--<td><span class="badge bg-red">${boardVO.viewcnt }</span></td>--%>
                        <%--</tr>--%>

                        <%--</c:forEach>--%>

                        <c:forEach items="${list}" var="boardVO">

                            <tr>
                                <td>${boardVO.bno}</td>
                                <td>
                                    <a href='/sboard/readPage${pageMaker.makeSearch(pageMaker.cri.page)}&bno=${boardVO.bno}'>
                                            ${boardVO.title} <strong>[ ${boardVO.replycnt} ]</strong>
                                    </a></td>
                                <td>${boardVO.writer}</td>
                                <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
                                                    value="${boardVO.regdate}"/></td>
                                <td><span class="badge bg-red">${boardVO.viewcnt}</span></td>
                            </tr>

                        </c:forEach>

                    </table>
                </div>
                <!-- /.box-body -->


                <div class="box-footer">

                    <div class="text-center">
                        <ul class="pagination">

                            <c:if test="${pageMaker.prev}">
                                <li><a href="list${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
                            </c:if>

                            <c:forEach begin="${pageMaker.startPage }"
                                       end="${pageMaker.endPage }" var="idx">
                                <li<c:out value="${pageMaker.cri.page == idx?' class=active':''}"/>>
                                    <a href="list${pageMaker.makeSearch(idx)}">${idx}</a>
                                </li>
                            </c:forEach>

                            <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                                <li><a href="list${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
                            </c:if>

                        </ul>
                    </div>
                    <%-- JSTL의 <c:if>는 boolean으로 나오는 결과를 확인하므로 ${pageMaker.prev}를 이용해서 이전 페이지로 가는 링크가 있어야 하는지를 판단. --%>
                    <%-- 현재 페이지의 번호는 PageMaker 객체 내의 Criteria 객체에 존재하므로 ${pageMaker.cri.page}를 이용해서
                    getCriteria(), getPage()를 호출하는 형태로 사용. 이를 이용해서 화면에 현재 페이지 번호만을 눈에 띄게 표현할 수 있음. --%>
                    <%-- 이전의 예제는 단순히 게시물의 번호를 전송하는 링크만 생성되었지만, 위와 같이 페이지 정보를 유지할 수 있도록 변경. --%>

                </div>
                <!-- /.box-footer-->
            </div>
        </div>
        <!--/.col (left) -->

    </div>
    <!-- /.row -->
</section>
<!-- /.content -->

<%--<script src="http://code.jquery.com/jquery-latest.js"></script>--%>
<script>
    var result = '${msg}';

    if (result == 'success') {
        alert("처리가 완료되었습니다.");
    }
</script>

<%--<script src="http://code.jquery.com/jquery-latest.js"></script>--%>
<script>
    $(document).ready(function () {
        $('#searchBtn').on("click",
            function (event) {
                self.location = "list"
                    + '${pageMaker.makeQuery(1)}'
                    + "&searchType="
                    + $("select option:selected").val()
                    + "&keyword=" + $('#keywordInput').val();
            });

        $('#newBtn').on("click", function (evt) {
            self.location = "register";
        });
    });
</script>

<%@include file="../include/footer.jsp" %>
