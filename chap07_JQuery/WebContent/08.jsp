<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<div align="center">
	<button  id="bt"> push </button>
	<hr/>
	
	<div id="result">
	</div>
	
</div>
<script>

	// data 로 설정해놓으면 보낼때 파라미터 값 넣지 않아도 자동으로 보내진다
	$("#bt").on("click", function(){
		$.ajax({
			"url" : "/08ajax.jsp",
			"method" : "get",
			"data" : {
				"q" : "query",
				"v" : "value"
			}
		}).done(function(a){
			//console.log(a);
			$("#result").append("ID : " +a.id + "<br/>");
			$("#result").append("PASS : " +a.pass+ "<br/>");
			$("#result").append("AGE : " +a.age+ "<br/>");
			$("#result").append("ALIVE : " +a.alive+ "<br/>");
			$("#result").append("HOBBY : " +a.hobby+ "<br/>");
			$("#result").append("Q : " +a.q+ "<br/>");
			$("#result").append("V : " +a.v+ "<br/>");
		});
	})

</script>