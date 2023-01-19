<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <title>회원가입 페이지</title>
    <style>
        #wrap{
            width:530px;
            margin-left:auto; 
            margin-right:auto;
            text-align:center;
        }
        
        table{
            border:3px solid red
        }
        
        td{
            border:1px solid pink
        }
        
        #title{
            background-color:pink
        }
    </style>
    
    <script type="text/javascript">
	
		// 필수 입력정보인 아이디, 비밀번호가 입력되었는지 확인하는 함수
		function checkValue() {
			if(!document.userInfo.ID.value){
				alert("아이디를 입력하세요.");
				return false;
			}
			
			if(!document.userInfo.PWD.value){
				alert("비밀번호를 입력하세요.");
				return false;
			}
			
			// 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
			if(document.userInfo.PWD.value != document.userInfo.PWD_RE.value ){
				alert("비밀번호를 동일하게 입력하세요.");
				return false;
			}
			
			if(!document.userInfo.UserName.value){
				alert("이름을 입력하세요.");
				return false;
			}
			
			if(!document.userInfo.Email.value){
				alert("이메일을 입력하세요.");
				return false;
			}
			
			if(!document.userInfo.Contact.value){
				alert("연락처를 입력하세요.");
				return false;
			}
			
			if(!document.userInfo.Address.value){
				alert("주소를 입력하세요.");
				return false;
			}
		}
		
		// 취소 버튼 클릭시 로그인 화면으로 이동
		function goLoginForm() {
			location.href="LoginForm.jsp";
		}

	</script>
</head>
<body>
   <!-- div 왼쪽, 오른쪽 바깥여백을 auto로 주면 중앙정렬된다.  -->
	<div id="wrap">
		<br><br>
		<b><font size="6" color="gray">회원가입</font></b>
		<br><br><br>

		<!-- 입력한 값을 전송하기 위해 form 태그를 사용한다 -->
		<!-- 값(파라미터) 전송은 POST 방식, 전송할 페이지는 JoinPro.jsp -->
		<form method="post" action="../pro/JoinPro.jsp" name="userInfo"
			onsubmit="return checkValue()">
            <table>
                <tr>
                    <td id="title">아이디</td>
                    <td>
                        <input type="text" name="ID" maxlength="20">  
                        <input type="button" value=" 중복확인 ">
                    </td>
                </tr>
                        
                <tr>
                    <td id="title">비밀번호</td>
                    <td>
                        <input type="password" name="PWD" maxlength="15">
                    </td>
                </tr>
                
                <tr>
                    <td id="title">비밀번호 확인</td>
                    <td>
                        <input type="password" name="PWD_RE" maxlength="15">
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">이름</td>
                    <td>
                        <input type="text" name="UserName" maxlength="40">
                    </td>
                </tr>
                 
                <tr>
                    <td id="title">이메일</td>
                    <td>
                        <input type="text" name="Email" maxlength="80">
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">연락처</td>
                    <td>
                        <input type="text" name="Contact">
                    </td>
                </tr>
                
                <tr>
                    <td id="title">주소</td>
                    <td>
                        <input type="text" size="60" name="Address">
                    </td>
                </tr>
            </table>
            <br>
            <input type="submit" value=" 가 입 ">  <input type="button" value=" 취 소 " onclick="goLoginForm()">
        </form>
    </div>
</body>
</html>