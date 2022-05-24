<%--
  Created by IntelliJ IDEA.
  User: kch80
  Date: 2022-05-23
  Time: 오전 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>passwordCheck.jsp</h2>
    <form action="/board/delete" method="post">
        <label for="pwConfirm">비밀번호를 입력해주세요</label>
        <%--라벨을 누르면 input태그 활성화됨--%>
        <input type="text" name="boardPassword" id="pwConfirm">
        <input type="button" onclick="passwordCheck()" value="비밀번호 확인">
        <%--id와 함수이름을 같은 것으로 하면 오류--%>
    </form>
</body>
<script>
    const passwordCheck = () => {
        const pwConfirm = document.getElementById("pwConfirm").value;
        const pwDB = `${board.boardPassword}`;

        if(pwConfirm == pwDB) {
            location.href = "/board/delete?id=${board.id}";
        } else {
            alert("비밀번호가 일치하지 않습니다.");
            location.href = "/board/detail?id=${board.id}";
        }
    }
</script>
</html>
