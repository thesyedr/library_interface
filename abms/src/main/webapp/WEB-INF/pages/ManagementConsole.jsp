<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Library Interface</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>\resources\css\bootstrap.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>\resources\css\bootstrap.css.map">
<link rel="stylesheet" href="<%=request.getContextPath() %>\resources\css\bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>\resources\css\bootstrap-theme.min.css">
 <%-- <script src="<%=request.getContextPath() %>\resources\js\jquery.min.js"></script>
<script src="<%=request.getContextPath() %>\resources\js\bootstrap.min.js"></script> 
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>--%>
<script src="<%=request.getContextPath() %>\resources\js\jquery-1.11.1.js"></script>
<script src="<%=request.getContextPath() %>\resources\modal\bootstrap-modal.js"></script>
<script src="<%=request.getContextPath() %>\resources\js\bootstrap.js"></script>

<style type="text/css">    
.masthead img{
width:100%;
 }
.bs-example{
    	margin: 30px;
		margin-left: auto;
		margin-right: auto;
    }
.updateFormClass {
	margin: 30px;
   padding-right: 15px;
   padding-left: 252px;
   margin-right: auto;
   margin-left: auto;
}
</style>
</head>
<body>
<div class="masthead">
<img src="<%=request.getContextPath() %>\resources\images\mainheader.png"/>
</div>
<div class="container">
 
<!-------->
<div id="content">
    <ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
        <li class="active"><a href="#books" data-toggle="tab" onclick="javascript:bookTabClick();">Books</a></li>
        <li><a href="#insert" data-toggle="tab" onclick="javascript:insertTabClick();">Insert</a></li>
        <li id="update-tab"><a href="#update" data-toggle="tab" onclick="javascript:updateTabClick();">Update</a></li>
        <li><a href="#delete" data-toggle="tab" onclick="javascript:deleteTabClick();">Delete</a></li>
         
    </ul>
    <div id="my-tab-content" class="tab-content">
        <div class="tab-pane active" id="books">
        <div class="bs-example">
            <div class="table-responsive"> 
        <table id="table-books" class="table table-bordered table-hover">
            <thead>
                <tr class="info">
                	<th>ISBN</th>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Category</th>
                    <th>Publisher</th>
                    <th>Price</th>           
               </tr>
            </thead>
            <tbody>
                
            </tbody>
        </table>
        </div>
        </div>
        </div>
        <!-- Insert Form -->
        <div class="tab-pane" id="insert">   
        <div id="success-insert-text"></div>  
         <div id="failure-insert-text"></div>        
            <div class="bs-example"> 
                       
			<form class="form-horizontal" id="insert-book-form">
					
					<div class="form-group">
					
						<label class="control-label col-xs-3">ISBN Number:</label>
								<div class="col-xs-3">
									<input type="text" class="form-control" id="book_isbn" placeholder="ISBN Number" >
								</div>
					</div>
					<div class="form-group">
					
						<label class="control-label col-xs-3">Book Title:</label>
								<div class="col-xs-3">
									<input type="text" class="form-control" id="book_title" placeholder="Book Title">
								</div>
					</div>
					<div class="form-group">
					
						<label class="control-label col-xs-3">Author Name:</label>
								<div class="col-xs-3">
									<input type="text" class="form-control" id="book_author" placeholder="Author Name">
								</div>
					</div>
					
					<div class="form-group">
			
						<label class="control-label col-xs-3" for="publisher">Publisher:</label>
						<div class="col-xs-3">
							<input type="text" class="form-control" id="book_publisher" placeholder="Publisher Name">
						</div>
					</div>
					<!-- <div class="form-group">
					
						<label class="control-label col-xs-3">Edition:</label>
								<div class="col-xs-3">
									<input type="text" class="form-control" id="book_edition" placeholder="Edition">
								</div>
					</div> -->
					
					<div class="form-group">
					
						<label class="control-label col-xs-3">Edition:</label>
								<div class="col-xs-3">
					                <select class="form-control" id = "book_edition">
					                    <option value="First">First</option>
					                    <option value="Second">Second</option>
					                    <option value="Third">Third</option>
					                </select>
            					</div>
					</div>
					
					<div class="form-group">
					
						<label class="control-label col-xs-3">Price of the Book:</label>
								<div class="col-xs-3">
									<input type="text" class="form-control" id="book_price" placeholder="Price" onchange="javascript:priceValidation();">
								</div>
					</div>
					
					<div class="form-group">
					
						<label class="control-label col-xs-3">Category:</label>
								<div class="col-xs-3">
					                <select class="form-control" id="book_category">
					                    <option value="Java">Java</option>
					                    <option value="Database">Database</option>
					                    <option value="Testing">Testings</option>
					                </select>
            					</div>
					</div>
					
					<div class="form-group">
            		<div class="col-xs-offset-3 col-xs-3">
								<button type="button" class="btn btn-success" onclick="javascript:insertBook();">Submit</button>
								<input type="reset" class="btn btn-default" value="Reset">
					</div>
					</div>
					
			</form>
		
		</div>
        </div>
        <div class="tab-pane" id="update">
         	<div id="success-update-text"></div>  
        	<div id="failure-update-text"></div>
            <div class="updateFormClass"> 
			<form class="form-inline"  >
				<div class="form-group">												
					<input type="text" class="form-control" id="book_isbn_update" placeholder="Enter ISBN Number">								
				</div>
				<div class="form-group">
            		<div class="col-xs-offset-3 ">
						<button type="button" class="btn btn-warning" onclick="javascript:updateBookFromIsbn();">Update</button>
					</div>
				</div>
					
				</form>
		  </div>
		  <div id="update-book-div" style="display: none" >
		  	<div class="bs-example" align="center"> 
                       
			<form class="form-horizontal" id="update-book-form">
					
					<div class="form-group">
					
						<label class="control-label col-xs-3">ISBN Number:</label>
								<div class="col-xs-3">
									<input type="text" class="form-control" readonly="true" id="update_book_isbn" placeholder="ISBN Number">
								</div>
					</div>
					<div class="form-group">
					
						<label class="control-label col-xs-3">Book Title:</label>
								<div class="col-xs-3">
									<input type="text" class="form-control" id="update_book_title"  placeholder="Book Title">
								</div>
					</div>
					<div class="form-group">
					
						<label class="control-label col-xs-3">Author Name:</label>
								<div class="col-xs-3">
									<input type="text" class="form-control" id="update_book_author" placeholder="Author Name">
								</div>
					</div>
					
					<div class="form-group">
			
						<label class="control-label col-xs-3" for="publisher">Publisher:</label>
						<div class="col-xs-3">
							<input type="text" class="form-control" id="update_book_publisher" placeholder="Publisher Name">
						</div>
					</div>
					<div class="form-group">
					
						<label class="control-label col-xs-3">Edition:</label>
								<div class="col-xs-3">
									<select class="form-control" id = "update_book_edition">
					                    <option value="First">First</option>
					                    <option value="Second">Second</option>
					                    <option value="Third">Third</option>
					                </select>
								</div>
					</div>
					<div class="form-group">
					
						<label class="control-label col-xs-3">Price of the Book:</label>
								<div class="col-xs-3">
									<input type="text" class="form-control" id="update_book_price" placeholder="Price">
								</div>
					</div>
					
					<div class="form-group">
					
						<label class="control-label col-xs-3">Category:</label>
								<div class="col-xs-3">
					                <select class="form-control" id="update_book_category">
					                    <option value="Java">Java</option>
					                    <option value="Database">Database</option>
					                    <option value="Testing">Testings</option>
					                </select>
            					</div>
					</div>
					
					<div class="form-group">
            		<div class="col-xs-offset-3 col-xs-3">
								<button type="button" class="btn btn-success" onclick="javascript:updateBookRequest();">Update</button>
								
					</div>
					</div>
			</form>
		</div>
		  	
		  </div>
        </div>
        <div class="tab-pane" id="delete">
        <div id="success-delete-text"></div>  
        <div id="failure-delete-text"></div>
            <div class="updateFormClass">
			<form class="form-inline">
				<div class="form-group">												
					<input type="text" class="form-control" id="book_isbn_delete" placeholder="Enter ISBN Number">								
				</div>
				<div class="form-group">
            		<div class="col-xs-offset-3 ">
						<button type="button" class="btn btn-warning" onclick="javascript:deleteBook();">Delete</button>
					</div>
				</div>
					
				</form>
		  </div>
				
        </div>
        
    </div>
</div>
</div> <!-- container -->

<script type="text/javascript">

function priceValidation(){
	var priceVal = $('#book_price').val();	
	var iNum = parseFloat(priceVal);	
	if(isNaN(iNum)){
		alert("Enter Valid Price in Double");
		$('#book_price').val("");
	}else{
		if(iNum >1000){
			alert("Enter Price Below 1000");
			$('#book_price').val("");
		}
	}
}

function formValidation(){
	console.log("=======Start of Validation======");
	var status = true;
	
	if($('#book_isbn').val()==""){
		status = false;
	}
	if($('#book_title').val()==""){
		status = false;
	}
	if($('#book_author').val()==""){
		status = false;
	}
	if($('#book_publisher').val()==""){
		status = false;
	}
	if($('#book_price').val()==""){
		status = false;
	}
	if($('#book_category').val()==""){
		status = false;
	}
	
	if(!status){
		alert("Fields Should not be Empty");
	}
	return status;
	
}
var tableData = [];
    jQuery(document).ready(function ($) {
        $('#tabs').tab();        
        getAllBooks();
    });
    
  
function getAllBooks(){
	$.ajax({ 
	    url: "book/books.htm", 
	    type: 'GET',   
	    contentType: "application/json; charset=utf-8",
	    success: function(data) {
	        tableData = data.books;		        
	        showDataInTable(); 
	    },
	    error:function(data) { 
	        alert("error: "+data);
	    }
	});
}
    
function insertBook(){
	
	var status = formValidation();
	if(status){
	 var insertBookRequest = new Object();
	 insertBookRequest.book_isbn=$('#book_isbn').val();
	 insertBookRequest.book_title=$('#book_title').val();
	 insertBookRequest.book_author=$('#book_author').val();
	 insertBookRequest.book_publisher=$('#book_publisher').val();
	 insertBookRequest.book_edition=$('#book_edition').val();
	 insertBookRequest.book_price=$('#book_price').val();
	 insertBookRequest.book_category=$('#book_category').val();
	 var requestJson = JSON.stringify(insertBookRequest);	 
	  $.ajax({ 
		    url: "book/insertBook.htm", 
		    type: 'POST', 		     
		    data: requestJson, 		    
		    contentType: "application/json; charset=utf-8",
		    success: function(data) { 
		        $("#failure-insert-text").text("")
		        $("#success-insert-text").text("Record Inserted Successfully.").css('color', '#006400').css('text-align','center');
		        $('#insert-book-form').each (function(){
		        	  this.reset();
		        	});
		    },
		    error:function(data) { 
		        $("#success-insert-text").text("");
		        $("#failure-insert-text").text("Record Inserted Failed.").css('color', '#FF0000').css('text-align','center');
		    }
		});
	}else{
		return status;
		
	}
	  
 }
function deleteBook(){
	
	var bookIsbnDelete = $('#book_isbn_delete').val();
	var updateStatus = false;
	for(var i=0;i<tableData.length;i++){		
		if(tableData[i].book_isbn == bookIsbnDelete){			
			updateStatus = true;
		}
	}
	if(updateStatus){
	  $.ajax({ 
		    url: "book/deleteBook/"+bookIsbnDelete, 
		    type: 'DELETE', 		     
		    data: "", 		    
		    contentType: "application/json; charset=utf-8",
		    success: function(data) { 
		    	$("#success-delete-text").text("");
		        $("#failure-delete-text").text("Record Deleted.").css('color', '#006400').css('text-align','center');
		        $('#book_isbn_delete').val("");
		        
		    },
		    error:function(data) { 
		    	$("#success-delete-text").text("");
		        $("#failure-delete-text").text("Record Deletion Failed.").css('color', '#FF0000').css('text-align','center');
		    }
		});
	}else{
		$("#failure-delete-text").text("Book Details does't exists for ISBN : "+bookIsbnDelete).css('color', '#FF0000').css('text-align','center');
		
	}
		
	
}

function showDataInTable(){
	console.log("inside showDataInTable function");
	
	$.each(tableData, function(rowIndex,item){		
		/* $('#table-books > tbody:last').append('<tr><td>'+item.book_isbn+'</td><td>'+item.book_title+'</td><td>'+item.book_author+'</td><td>'+item.book_category+'</td><td>'+item.book_publisher+'</td><td>'+item.book_price+'</td><td>'
				+"<div class=\"col-xs-offset-2 \"><button type=\"button\" class=\"btn btn-warning\" id=\"updateBtn\" onclick=\"javascript:updateBook("+rowIndex+");\">Update</button></div>"+'</td></tr>');
		 */
		$('#table-books > tbody:last').append('<tr><td>'+item.book_isbn+'</td><td>'+item.book_title+'</td><td>'+item.book_author+'</td><td>'+item.book_category+'</td><td>'+item.book_publisher+'</td><td>'+item.book_price+'</td></tr>');
				
		
	}); 
}

function updateBookFromIsbn(){
	
	$("#failure-update-text").text("")
	var book_isbn_update = $('#book_isbn_update').val();
	console.log("book_isbn_update : "+book_isbn_update);
	console.log(tableData.length);
	console.log(tableData);
	var updateBookObj;
	var updateStatus = false;
	for(var i=0;i<tableData.length;i++){
		console.log("i == "+i);
		console.log(book_isbn_update + " :: "+tableData[i].book_isbn)
		if(tableData[i].book_isbn == book_isbn_update){
			updateBookObj = tableData[i];
			updateStatus = true;
		}
	}
	console.log("updateStatus = "+updateStatus);	
	if(updateStatus){
	
		console.log("update price : "+updateBookObj.book_price);
		
		$('#book_isbn_update').val("");
		$('#update_book_isbn').val(updateBookObj.book_isbn);
		$('#update_book_title').val(updateBookObj.book_title);
		$('#update_book_author').val(updateBookObj.book_author);
		$('#update_book_publisher').val(updateBookObj.book_publisher);
		$('#update_book_edition').val(updateBookObj.book_edition);
		$('#update_book_price').val(updateBookObj.book_price);
		$('#update_book_category').val(updateBookObj.book_category);
		$('#update-book-div').show();
		
		
		
	}else{
		console.log("Book Details Does't Exists");
		$('#update-book-div').hide();
		$("#failure-update-text").text("Book Details Does't Exists for ISBN : "+book_isbn_update).css('color', '#FF0000').css('text-align','center');
	}
		
}

function updateBookRequest(){
	
	var updateBookRequest = new Object();
	updateBookRequest.book_isbn=$('#update_book_isbn').val();
	updateBookRequest.book_title=$('#update_book_title').val();
	updateBookRequest.book_author=$('#update_book_author').val();
	updateBookRequest.book_publisher=$('#update_book_publisher').val();
	updateBookRequest.book_edition=$('#update_book_edition').val();
	updateBookRequest.book_price=$('#update_book_price').val();
	updateBookRequest.book_category=$('#update_book_category').val();
	 var requestJson = JSON.stringify(updateBookRequest);	
	 console.log(requestJson);
	  $.ajax({ 
		    url: "book/updateBook.htm", 
		    type: 'PUT', 		     
		    data: requestJson, 		    
		    contentType: "application/json; charset=utf-8",
		    success: function(data) { 
		        $("#failure-update-text").text("")
		        $("#success-update-text").text("Record Updated Successfully.").css('color', '#006400').css('text-align','center');
		        $('#update-book-form').each (function(){
		        	  this.reset();
		        	});
		        $('#update-book-div').hide();
		    },
		    error:function(data) { 
		        $("#success-update-text").text("");
		        $("#failure-update-text").text("Record Updation Failed.").css('color', '#FF0000').css('text-align','center');
		    }
		});
}

function updateBook(bookIndex){
	console.log("Table book to be edited : "+bookIndex);
	var bookIsbnToEdit = tableData[bookIndex].book_isbn;
	//$('#modal-edit-book').modal('show');
	
		
}

function bookTabClick(){
	tableData = [];
	$("#table-books > tbody:last").children().remove();
	getAllBooks();
	
}

function updateTabClick(){
	$('#update-book-div').hide();
	$("#failure-update-text").text("");
	$("#success-update-text").text("");
	$('#book_isbn_update').val("");
}

function insertTabClick(){
	$("#failure-insert-text").text("");
	$("#success-insert-text").text("");
	$('#insert-book-form').each (function(){
  	  this.reset();
  	});
}
function deleteTabClick(){
	$("#failure-delete-text").text("");
	$("#success-delete-text").text("");
	$('#book_isbn_delete').val("");
}
</script>    

<div class="masthead">
<img src="<%=request.getContextPath() %>\resources\images\footer.png"/>
</div>
</body>
</html>