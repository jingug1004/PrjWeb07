<%--
  Created by IntelliJ IDEA.
  User: wtime
  Date: 2017-02-14
  Time: 오전 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>

    <style>
        #modDiv {
            width: 300px;
            height: 100px;
            background-color: gray;
            position: absolute;
            top: 50%;
            left: 50%;
            margin-top: -50px;
            margin-left: -150px;
            padding: 10px;
            z-index: 1000;
        }

        .pagination {
            width: 100%;
        }

        .pagination li {
            list-style: none;
            float: left;
            padding: 3px;
            border: 1px solid blue;
            margin: 3px;
        }

        .pagination li a {
            margin: 3px;
            text-decoration: none;
        }

    </style>
</head>

<body>


<div id='modDiv' style="display: none;">
    <%-- 작성된 <div>는 평상시에는 안 보이도록 처리하고, 각 댓글 항목의 'MOD' 버튼을 누르는 경우에만 보이도록 하기 위해서 <div>에 스타일을 적용. --%>
    <div class='modal-title'></div>
    <div>
        <input type='text' id='replytext'>
    </div>
    <div>
        <button type="button" id="replyModBtn">Modify</button>
        <button type="button" id="replyDelBtn">Delete</button>
        <button type="button" id='closeBtn'>Close</button>
    </div>
</div>
<%-- 수정과 삭제 작업을 하기 위해서 화면 중앙에 별도의 <div> --%>
<%-- <div> 내에는 class='modal-title' 속성과 <input>을 작성. 수정, 삭제, 조회를 위한 버튼을 만들어 필요한 작업을 수행하도록 함. --%>

<h2>Ajax Test Page</h2>

<div>
    <div>
        REPLYER <input type='text' name='replyer' id='newReplyWriter'>
    </div>
    <div>
        REPLY TEXT <input type='text' name='replytext' id='newReplyText'>
    </div>
    <button id="replyAddBtn">ADD REPLY</button>
</div>
<%--<form></form> 태그를 이용하는 것도 괜찮지만, 전송할 내용이 많지 않으므로 id 속성을 이용해서 처리할 예정. 댓글은 게시물의 조회 페이지에서 작성되므로 게시물의 번호(bno)는 입력받지 않도록 작성. --%>


<ul id="replies">
</ul>

<ul class='pagination'>
</ul>
<%--댓글이 화면에 페이징으로 보여지기 위해서 <ul>을 다음과 같이 구성. --%>


<!-- jQuery 2.1.4 -->
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<script>

    var bno = 605;

    getPageList(1);

    function getAllList() {

        $.getJSON("/replies/all/" + bno, function (data) {
            //console.log(data.length);
            var str = "";

            $(data).each(function () {
                str += "<li data-rno='" + this.rno + "' class='replyLi'>"
                    + this.rno
                    + ":"
                    + this.replytext
                    + "<button>MOD</button></li>";
            });
            // Ajax로 호출된 목록에 대해서 루프를 돌면서 <li> 태그를 생성해 냄. 각 <li>마다 댓글의 번호와 내용이 출력되도록 함.
            // 주목할 부분은 <li> 태그 속성의 'data-rno'. 'data-'로 시작되는 속성은 이름이나 개수에 관계없이 태그 내에서 자유롭게 사용할 수 있는 속성이므로 id나 name 속성을 대신해서 사용하기 편리.

            $("#replies").html(str);
        });
    }

    $("#replyAddBtn").on("click", function () {

        var replyer = $("#newReplyWriter").val();
        var replytext = $("#newReplyText").val();

        $.ajax({
            type: 'post',
            url: '/replies',
            headers: {
                "Content-Type": "application/json",
                "X-HTTP-Method-Override": "POST"
            },
            dataType: 'text',
            data: JSON.stringify({
                bno: bno,
                replyer: replyer,
                replytext: replytext
            }),
            success: function (result) {

                if (result == 'SUCCESS') {

                    alert("등록 되었습니다.");
                    getAllList();

                }
            }
        });
        // jQuery를 이용하여 $.ajax()를 통해 서버를 호출. 전송하는 데이터는 JSON으로 구성된 문자열을 사용, 전송받은 결과는 단순 문자열.
        // 상단의 입력창에 내용을 넣고, 댓글이 드옥되고 나서 화면에 목록이 갱신된 결과.
    });

    $("#replies").on("click", ".replyLi button", function () {

        var reply = $(this).parent();

        var rno = reply.attr("data-rno");
        var replytext = reply.text();

        $(".modal-title").html(rno);
        $("#replytext").val(replytext);
        $("#modDiv").show("slow");

    });


    $("#replyDelBtn").on("click", function () {

        var rno = $(".modal-title").html();
        var replytext = $("#replytext").val();

        $.ajax({
            type: 'delete',
            url: '/replies/' + rno,
            headers: {
                "Content-Type": "application/json",
                "X-HTTP-Method-Override": "DELETE"
            },
            dataType: 'text',
            success: function (result) {
                console.log("result: " + result);
                if (result == 'SUCCESS') {
                    alert("삭제 되었습니다.");
                    $("#modDiv").hide("slow");
                    getAllList();
                }
            }
        });
//        삭제 작업 이후에는 보여지고 있는 <div>를 안 보이게 처리(hide())한 후 다시 전체 목록을 가져오는 getAllList()를 호출해서 처리.
//        'DELETE'를 선택하면 Ajax를 통해 서버에서 삭제 작업을 진행한 후 경고창을 통해 알려주게 함. 이후 다시 getAllList()를 호출하여 화면상의 목록을 갱신.
    });

    $("#replyModBtn").on("click", function () {

        var rno = $(".modal-title").html();
        var replytext = $("#replytext").val();

        $.ajax({
            type: 'put',
            url: '/replies/' + rno,
            headers: {
                "Content-Type": "application/json",
                "X-HTTP-Method-Override": "PUT"
            },
            data: JSON.stringify({replytext: replytext}),
            dataType: 'text',
            success: function (result) {
                console.log("result: " + result);
                if (result == 'SUCCESS') {
                    alert("수정 되었습니다.");
                    $("#modDiv").hide("slow");
                    //getAllList();
                    getPageList(replyPage);
                }
            }
        });
        // 댓글 수정의 처리에는 PUT 방식이 사용되었고, 수정되는 게시물의 번호는 URI에 추가해서 전송. 수정돼야 하는 데이터는 JSON으로 구성해서 전송. 수정 작업 역시 삭제 작업과 동일한 순서로 동작.
    });

    function getPageList(page) {

        $.getJSON("/replies/" + bno + "/" + page, function (data) {

            console.log(data.list.length);

            var str = "";

            $(data.list).each(function () {
                str += "<li data-rno='" + this.rno + "' class='replyLi'>"
                    + this.rno + ":" + this.replytext +
                    "<button>MOD</button></li>";
            });

            $("#replies").html(str);

            printPaging(data.pageMaker);

        });
        // getPageList() 함수는 페이지 번호를 입력받고, jQuery의 getJSON()을 이용해서 가져온 데이터를 처리.
        // 서버에서 전송된 데이터 중 댓글 목록인 list 데이터를 이용해서 댓글 내용들을 표시하고, 페이징 처리를 위해 만들어진 pageMaker 데이터를 이용해서 printPaging()을 호출.
    }


    function printPaging(pageMaker) {

        var str = "";

        if (pageMaker.prev) {
            str += "<li><a href='" + (pageMaker.startPage - 1) + "'> << </a></li>";
        }

        for (var i = pageMaker.startPage, len = pageMaker.endPage; i <= len; i++) {
            var strClass = pageMaker.cri.page == i ? 'class=active' : '';
            str += "<li " + strClass + "><a href='" + i + "'>" + i + "</a></li>";
        }

        if (pageMaker.next) {
            str += "<li><a href='" + (pageMaker.endPage + 1) + "'> >> </a></li>";
        }

        $('.pagination').html(str);
    }
    // printPaging()은 JavaScript 객체인 pageMaker를 이용해서 화면에 페이지 번호를 출력. printPaging()은 PART 2에서 구성된 내용을 JavaScript로 처리한 함수.

    var replyPage = 1;

    $(".pagination").on("click", "li a", function (event) {

        event.preventDefault();

        replyPage = $(this).attr("href");

        getPageList(replyPage);

    });
    // event.preventDefault()는 a href=" 태그의 기본 동작인 페이지 전환을 막는 역할을 함. 화면의 이동을 막은 후 현재 클릭된 페이지의 번호를 얻어내고, 이 번호로 getPageList()를 호출.

</script>

</body>
</html>
