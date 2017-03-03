<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<h2>jQuery DOM Traversing</h2>
-태그$("태그명")나, 클래스이름$(".클래스명"), 아이디명$("#아이디명")로 접근 가능
<br/>
<c:forTokens var="tk" items="가위,바위,보" delims=",">
	<button>${tk }</button>
</c:forTokens>
<hr/>
<!-- 
	태그명이나.. 클래스이름으로 서칭이 되면.. 여러개가 나옴. 그럴땐..each와 연동이 됨.
 -->
 <c:forEach var="i" begin="1" end="10">
	<input type="checkbox" class="chk" ${i %2 eq 0 ? '':'checked' } />목록 .${i }<br/>
</c:forEach>
<input type="text" readonly value="아무말이나" id="t"/>
<hr/>
<button id="bt">클릭</button>
<script>
	// 태그사용
	$("button").each(function(){
		console.log(this);
		// this.innerHTML = "안녕";
		//$(this).html("음..");
		console.log($(this).html("값변환"));	// 안에 비워두면 들어가있는 값 확인, 넣어주면 그값으로 변환
		this.disabled = true;		// $(this).disabled = true; (X)
		// $(this).prop("disabled", true); (o)
		// this 와 document.getElement.... 는 동급
	});
	// 클래스 사용
	$(".chk").each(function() {
		// this.checked= true;
		console.log($(this).prop("checked"));	// 안에 checked를 넣어주면 확인. true, false로 반환
		//$(this).prop("checked", true);
	});
	// 아이디 사용
	$("#bt").prop("disabled", false);
	
	// prop 으로 제어되는 효과는 .. [checked, disabled, selected, readonly]
	$("#t").prop("readonly", false);
	//document.getElementById("t").readOnly = false;	// 잘 안씀
	
	$("#bt").click(function(){
		var cnt=0;
		$(".chk").each(function(){
			cnt++;
			$(this).prop("checked", !$(this).prop("checked"));
		});
		window.alert(cnt);
	});
	
	
</script>

