<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Add Users using ajax</title>
        <script type="text/javascript"
        src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    	<script type="text/javascript"
        src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.18/jquery-ui.min.js"></script>
        <script type="text/javascript">
   function doAjaxPost() {
        // get the form values
        var bookReq = new Object();
        bookReq.title = $('#title').val();
        bookReq.author=$('#author').val();
        bookReq.price=$('#price').val();
        var bookJsonReq = JSON.stringify(bookReq); 

        $.ajax({
        	type: "POST",
        	url: "addBook.htm",
        	contentType:"application/json",
        	data: bookJsonReq,
        	success: function(response){
        	// we have the response
        		alert("Response Recieved!!");
        		$('#info').html(response);
        		$('#name').val('');
        		$('#education').val('');
        	},
        	error: function(e){
        		alert('Error: ' + e);
        	}
        });
       }
        </script>
    </head>
    <body>
        <h1>Add Users using Ajax ........</h1>
        <table>
            <tr><td>Book Title : </td><td> <input type="text" id="title"><br/></td></tr>
            <tr><td>Book Author : </td><td> <input type="text" id="author"><br/></td></tr>
            <tr><td>Book Price : </td><td> <input type="text" id="price"><br/></td></tr>
            <tr><td colspan="2"><input type="button" value="Add Users" onclick="doAjaxPost()"><br/></td></tr>
            <tr><td colspan="2"><div id="info" style="color: green;"></div></td></tr>
        </table>
        <a href="/AjaxWithSpringMVC2Annotations/ShowUsers.htm">Show All Users</a>
    </body>
</html>