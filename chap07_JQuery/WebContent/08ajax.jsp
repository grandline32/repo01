<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
	
	String q = (String)request.getParameter("q");
	String v = (String)request.getParameter("v");	
	System.out.println("Q : "+q+ ", V : "+v);

	Map map = new HashMap();
	map.put("id","grandline");
	map.put("pass","3298");
	map.put("age", 19);
	map.put("alive", true);
	map.put("hobby", new String[]{"독서", "공부"});
	map.put("q", q);
	map.put("v", v);
	ObjectMapper om = new ObjectMapper();
	String str = om.writeValueAsString(map);
	out.println(str);
%>
