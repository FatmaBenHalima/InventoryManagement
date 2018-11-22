<?xml version="1.0" encoding="windows-1256" ?>
<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
       <%@page import = "com.mysql.jdbc.*" %>
       <%@page import = "java.sql.DriverManager" %>
         <%@page import = "java.sql.ResultSet" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256" />
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>WAREHOUSE MANAGEMENT SYSTEM</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="favicon.ico">

    <link rel="stylesheet" href="assets/css/normalize.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
    <!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->
    <link rel="stylesheet" href="assets/scss/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

</head>
<body>
        <!-- Left Panel -->

   
    <!-- Left Panel -->

    <!-- Right Panel -->

 


       

        <div class="content mt-12">


                <div class="row">
                  <div class="col-lg-12">
                    <div class="card">
                       
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                              <div class="card-body">
                                   <%
                   try
           		{
           			  Class.forName("com.mysql.jdbc.Driver");
           		Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/wms","root","");
           		String cod=request.getParameter("c");
           		PreparedStatement st=(PreparedStatement) con.prepareStatement("select * from colors where code=? ");
           		st.setString(1, cod);
           				ResultSet r=st.executeQuery();
           				if(r.next())
           				{
           					 %>
           					 
           				
           					
           					
                                  <form action="MajColor" method="post" novalidate="novalidate" enctype="multipart/form-data">
                                   
                                        
                                               <input type="hidden" name="st" id="st" value="<%=request.getParameter("st") %>" />
                                                 <input type="hidden" name="role" id="role" value="<%=request.getParameter("role") %>" />
                                                    <input type="hidden" name="code" id="code" value="<%=request.getParameter("c") %>" />
                                          <div class="form-group">
                                          <label for="cc-number" class="control-label mb-1">Color Name</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                          <input type="text" name="nom" id="nom" value="<%=r.getString(2) %>" />
                                         
                          </div>
                                     
                                                <div class="form-group">
                                          <label for="cc-number" class="control-label mb-1">Color Image</label>&nbsp;&nbsp;&nbsp;&nbsp;
                                      <image src="images/<%=r.getString(3) %>" width="100" height="100" />
                                          <input id="image" name="image" type="file" class="form-control cc-number identified visa" value="" data-val="true">
                                          
                          </div>
                                                
                          
                              
                          
                          
                          
                                        <span class="help-block" data-valmsg-for="cc-number" data-valmsg-replace="true"></span>
                                
                                      <div>
                                          <button id="ok" type="submit" id="update" name="update" class="btn btn-lg btn-info btn-block">
                                              <i class="fa fa-lock fa-lg"></i>&nbsp;
                                              <span id="payment-button-amount">Update</span>
                                              <span id="payment-button-sending" style="display:none;">Loading ...</span>
                                          </button>
                                           <button id="ok" type="submit" id="delete" name="delete" class="btn btn-lg btn-info btn-block">
                                              <i class="fa fa-lock fa-lg"></i>&nbsp;
                                              <span id="payment-button-amount">Delete</span>
                                              <span id="payment-button-sending" style="display:none;">Loading ...</span>
                                          </button>
                                      </div>
                                  </form>
                                  
                                  
                                   <%
           				}
           				
           					
           		}
           		catch(Exception e)
           		{
           			
           		}
                   
                   %>
                                  
                                  
                                   <span class="help-block" data-valmsg-for="cc-number" data-valmsg-replace="true"></span>
                                <br></br>
                                  
                                  
                                  
                                      
                        </div>
                    </div> <!-- .card -->

                  </div><!--/.col-->
  
                     </div>

            </div>




 

    <!-- Right Panel -->


    <script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>


</body>
</html>
