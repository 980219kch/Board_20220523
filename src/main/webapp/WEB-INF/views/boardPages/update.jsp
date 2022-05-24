<%--
  Created by IntelliJ IDEA.
  User: kch80
  Date: 2022-05-24
  Time: 오전 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h2 class="display-4 fw-normal">update.jsp</h2>
        <div class="py-5 text-center">
            <form action="/board/update" method="post" name="updateForm">
                id: <input class="form-control mb-2" type="text" name="id" value="${board.id}" readonly>
                boardWriter: <input class="form-control mb-2" type="text" name="boardWriter" value="${board.boardWriter}" readonly>
                boardTitle: <input class="form-control mb-2" type="text" name="boardTitle" value="${board.boardTitle}">
                boardContents: <textarea class="form-control" name="boardContents" cols="10" rows="5" >${board.boardContents}</textarea>
                boardPassword: <input class="form-control mb-2" type="text" name="boardPassword" id="pwConfirm" placeholder="비밀번호를 입력하세요.">
                <input class="btn btn-primary" type="button" onclick="update()" value="정보수정">
                <%--form태그 안에 button태그는 함수호출하기도전에 제출해버림 => input태그의 버튼을 쓸것..--%>
            </form>
        </div>
    </div>
</body>
<script>
    const update = () => {
        // const pwConfirm = document.querySelector("#pwConfirm").value;
        const pwConfirm = document.getElementById("pwConfirm").value;
        const pwDB = `${board.boardPassword}`;
        if(pwConfirm == pwDB) {
            updateForm.submit();
        } else {
            alert("비밀번호가 일치하지 않습니다.");
        }
    }
</script>
</html>
