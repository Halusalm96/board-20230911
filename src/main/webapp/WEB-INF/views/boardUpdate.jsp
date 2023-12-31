<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>글수정 페이지</title>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>
<div id="section">
    <form action="/board/update" method="post" name="frm">
        <input type="hidden" name="id" value="${board.id}">
        <input type="text" name="boardTitle" id="board-title" placeholder="제목">
        <input type="text" name="boardContents" id="board-contents" placeholder="내용">
        <input type="text" name="boardPass" id="board-pass" placeholder="비밀번호">
        <input type="button" value="삭제" onclick="delete_fn()">
    </form>
</div>
</body>
<script>
    const delete_fn = () => {
        const passInput = document.getElementById("board-pass").value;
        const passDB ='${board.boardPass}'
        if (passInput == passDB) {
            $(frm).submit()
        }else {
            alert("비밀번호가 맞지 않습니다.")
        }
    }
</script>
</html>
