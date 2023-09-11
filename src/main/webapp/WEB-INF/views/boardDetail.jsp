<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>글조회 페이지</title>
</head>
<body>
<div class="container">
    <div id="board-list">
        <table class="table table-bordered">
            <tr>
                <td>id</td>
                <td>이름</td>
                <td>비밀번호</td>
                <td>제목</td>
                <td>이름</td>
                <td>내용</td>
                <td>작성시간</td>
            </tr>
            <tr>
                <td>${board.id}</td>
                <td>${board.boardWriter}</td>
                <td>${board.boardPass}</td>
                <td>${board.boardTitle}</td>
                <td>${board.boardContents}</td>
                <td>${board.createdAt}</td>
                <td>
                    <button class="btn btn-info" onclick="deleteCheck_fn('${board.id}')">삭제</button>
                </td>
                <td>
                    <button class="btn btn-info" onclick="boardUpdate_fn('${board.id}')">수정</button>
                </td>
            </tr>
        </table>
        <a href="/">시작페이지 이동</a>
    </div>
</div>
</body>
<script>
    const deleteCheck_fn = (id) => {
        location.href = "/board/delete/check?id=" + id;
    }
    const boardUpdate_fn = (id) => {
        location.href = "/board/update?id=" + id;
    }
</script>
</html>
