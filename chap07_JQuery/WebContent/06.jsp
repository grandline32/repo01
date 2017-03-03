<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<div align="center" id="c1">
	<h1>약관</h1>
	아래의 모든 약관에 동의합니다 <input type="checkbox" id="a1" class="all" />
	<hr />
	아래의 약관에 동의합니다.<input type="checkbox" id="a2" class="sub" />
	<div style="height: 200;" id="c2">
		<h2>이용약관</h2>
	</div>
	<hr />
	아래의 약관에 동의합니다.<input type="checkbox" id="a3" class="sub" />
	<div style="height: 200;" id="c3">
		<h2>위치정보 이용약관</h2>
	</div>
	<hr />
	<button disabled id="next">다음으로.</button>
</div>
<script>
	// 개별 체크 해제 후 슬라이드 다운 미완
	
	$("#a1").on("click", function(){
		$(".sub").each(function(){
			$(this).prop("checked", $("#a1").prop("checked"));
		})
		enableCheck();
		$("#c2").slideUp(1000);
		$("#c3").slideUp(1000);
	});
	$("#a2").click(function() {
		enableCheck();
		$("#c2").slideUp(1000);
	});
	//$("#a3").click(enableCheck);
	$("#a3").click(function() {
		enableCheck();
		$("#c3").slideUp(1000);
	});
	
	function enableCheck() {
		var cnt=0;
		$(".sub").each(function(){
			if($(this).prop("checked"))
				cnt++;
		});
		if(cnt==2) {
			$("#a1").prop("checked", true);
			$("#next").prop("disabled", false);
		}else {
			$("#a1").prop("checked", false);
			$("#next").prop("disabled", true);
		}
	}
</script>