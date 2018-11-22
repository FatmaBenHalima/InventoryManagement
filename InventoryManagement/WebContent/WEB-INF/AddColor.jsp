<?xml version="1.0" encoding="windows-1256" ?>
<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256" />
 <meta charset="utf-8">
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
<body onload="show_hide()">
        <!-- Left Panel -->
<script language="JavaScript" >
function show_hide()
{
var x = '<%= request.getParameter("r") %>';
if(x=="Management")
	{
document.getElementById("link").style.visibility = "visible"
	}
else if(x=="WareHouseKeeper")
{
	document.getElementById("link").style.visibility = "hidden"
		}
		
else if(x=="Finance")
{
	document.getElementById("link").style.visibility = "hidden"
		}	
}
</script>


    <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">

            <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="./"><img src="images/logo.png" alt="Logo"></a>
            </div>

            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li>
                        <a href='index.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'> <i class="menu-icon fa fa-dashboard"></i>Dashboard </a>
                    </li>
                    <h3 class="menu-title">Product</h3><!-- /.menu-title -->
                    			 <li class="menu-item-has-children dropdown">
						  <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-laptop"></i>Products</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-id-badge"></i><a href='AddProduct.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>Add Product</a></li>
                            <li><i class="fa fa-bars"></i><a href='ProductsList.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>List Of Products</a></li>
                        </ul>
						
                    </li>
						 <li class="menu-item-has-children dropdown">
						  <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-laptop"></i>Product Types</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-id-badge"></i><a href='AddProductType.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>Add Product Type</a></li>
                            <li><i class="fa fa-bars"></i><a href='ProductTypesList.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>List Of Product Types</a></li>
                        </ul>
						</li>
						 <li class="menu-item-has-children dropdown">
						  <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-laptop"></i>Product Category</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-id-badge"></i><a href='AddProductCategory.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>Add Product Category</a></li>
                            <li><i class="fa fa-bars"></i><a href='ProductCategoryList.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>List Of Product Categories</a></li>
                        </ul>
						</li>
					
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-laptop"></i>Colors</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-id-badge"></i><a href='AddColor.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>Add Color</a></li>
                            <li><i class="fa fa-bars"></i><a href='ColorsList.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>List Of Color</a></li>
                         <li><i class="fa fa-bars"></i><a href='MAJColors.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>Update Color</a></li>
                        </ul>
						</li>
						 <li class="menu-item-has-children dropdown">
						  <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-laptop"></i>Sizes</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-id-badge"></i><a href='AddSize.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>Add Size</a></li>
                            <li><i class="fa fa-bars"></i><a href='SizesList.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>List Of Sizes</a></li>
                             <li><i class="fa fa-bars"></i><a href='MAJSizes.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>Update Sizes</a></li>
                        </ul>
						</li>
						 <li class="menu-item-has-children dropdown">
						  <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-laptop"></i>Weight Mesearements</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-id-badge"></i><a href='AddWeight.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>Add Weight</a></li>
                            <li><i class="fa fa-bars"></i><a href='WeightsList.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>List Of Weights</a></li>
                                   <li><i class="fa fa-bars"></i><a href='MAJWeights.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>Update Weight</a></li>
                        </ul>
						</li>
						 <li class="menu-item-has-children dropdown">
						  <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-laptop"></i>Dimension Mesearements</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-id-badge"></i><a href='AddDimension.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>Add Dimension</a></li>
                            <li><i class="fa fa-bars"></i><a href='DimensionsList.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>List Of Dimensions</a></li>
                                   <li><i class="fa fa-bars"></i><a href='MAJDimensions.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>Update Dimensions</a></li>
                        </ul>
						</li>
						 <li class="menu-item-has-children dropdown">
						  <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-laptop"></i>Units</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-id-badge"></i><a href='AddUnit.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>Add Unit</a></li>
                            <li><i class="fa fa-bars"></i><a href='UnitsList.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>List Of Units</a></li>
                                   <li><i class="fa fa-bars"></i><a href='MAJUnits.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>Update Units</a></li>
                        </ul>
						</li>
				
					  <h3 class="menu-title">Procurement</h3><!-- /.menu-title -->
					 <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-laptop"></i>Proforma Invoice</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-puzzle-piece"></i><a href='AddProforma.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>Add Proforma Invoice</a></li>
                            <li><i class="fa fa-bars"></i><a href='ProformaList.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>List of Proforma Invoice</a></li>
                      <li><i class="fa fa-bars"></i><a href='Input.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>Input Inventory</a></li>
                       
                    </ul>
                    </li>
					
						 <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-laptop"></i>Product Stores</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-puzzle-piece"></i><a href='AddStore.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>Add Product Store</a></li>
                            <li><i class="fa fa-bars"></i><a href='StoresList.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>List of Product Stores</a></li>
                        </ul>
                    </li>
					 <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-laptop"></i>Product Stores Rows</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-puzzle-piece"></i><a href='AddRow.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>Add Product Store Rows</a></li>
                            <li><i class="fa fa-bars"></i><a href='RowsList.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>List of Product Stores Rows</a></li>
                        </ul>
                    </li>
					 <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-laptop"></i>Product Stores Shelves</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-puzzle-piece"></i><a href='AddShelve.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>Add Product Store Shelves</a></li>
                            <li><i class="fa fa-bars"></i><a href='ShelvesList.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>List of Product Stores Shelves</a></li>
                        </ul>
                    </li>
 <h3 class="menu-title">Vendors & Categories</h3><!-- /.menu-title -->
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-table"></i>Vendors Category</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-table"></i><a href='AddCategory.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>Add Category</a></li>
                            <li><i class="fa fa-table"></i><a href='CategoriesList.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>Liste of Categories</a></li>
                        </ul>
                    </li>
					             <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-table"></i>Vendors</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-table"></i><a href='AddVendor.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>Add Vendor</a></li>
                            <li><i class="fa fa-table"></i><a href='Vendors.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>Liste of Vendors</a></li>
                        </ul>
                    </li>
					<div id="link">
					  <h3 class="menu-title" >Human Ressources & Roles</h3><!-- /.menu-title -->
                    <li class="menu-item-has-children dropdown" >
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-table"></i>Users</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-table"></i><a href='AddUser.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>Add User</a></li>
                            <li><i class="fa fa-table"></i><a href='UsersList.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>Liste of Users</a></li>
                        </ul>
                    </li>
 <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-table"></i>Roles</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-table"></i><a href='AssignUser.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>Assign user</a></li>
                            <li><i class="fa fa-table"></i><a href='RolesList.jsp?role=<%= request.getParameter("role") %>&st=<%= request.getParameter("st") %>'>Liste of roles assigned</a></li>
                        </ul>
                    </li>
                    </div>
                    <h3 class="menu-title" >Administration</h3><!-- /.menu-title -->

                      <li class="menu-item-has-children dropdown" >
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-laptop"></i>Privacy</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-puzzle-piece"></i><a href="Login.jsp">LogOut</a></li>
                        </ul>
                    </li>
                    

                   
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside><!-- /#left-panel -->


    <!-- Left Panel -->

    <!-- Right Panel -->

    <div id="right-panel" class="right-panel">


        <div class="breadcrumbs">
            <div class="col-sm-6">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1>WAREHOUSE MANAGEMENT SYSTEM</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="page-header float-right">
                    <div class="page-title">
                        <ol class="breadcrumb text-right">
                            <li><a href="#">Product</a></li>
                            <li class="active">ADD COLOR</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>

        <div class="content mt-3">


                <div class="row">
				 <div class="col-lg-2"></div>
                  <div class="col-lg-8">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Color Management</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                              <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Add new color</h3>
                                  </div>
                                  <hr>
                                  <form action="ColorServlet" method="post" novalidate="novalidate" enctype="multipart/form-data">
                                     <input type="hidden" id="role" name="role" value="<%=request.getParameter("role") %>" />
                                       <input type="hidden" id="st" name="st" value="<%=request.getParameter("st") %>" />
                                       
                                      <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Color Code</label>
                                          <input id="code" name="code" type="text" class="form-control" aria-required="true" aria-invalid="false" >
                                      </div>
                                      <div class="form-group has-success">
                                          <label for="cc-name" class="control-label mb-1">Color Name</label>
                                          <input id="name" name="name" type="text" class="form-control cc-name valid" autocomplete="cc-name" >
                                          <span class="help-block field-validation-valid" data-valmsg-for="cc-name" data-valmsg-replace="true"></span>
                                      </div>
                                      <div class="form-group">
                                          <label for="cc-number" class="control-label mb-1">Select an Image</label>
                                          <input id="image" name="image" type="file" class="form-control cc-number identified visa" value="" data-val="true">
                                          <span class="help-block" data-valmsg-for="cc-number" data-valmsg-replace="true"></span>
                                      </div>
                                      
                                      <div>
                                          <button id="ok" type="submit" class="btn btn-lg btn-info btn-block">
                                              <i class="fa fa-lock fa-lg"></i>&nbsp;
                                              <span id="payment-button-amount">Save</span>
                                              <span id="payment-button-sending" style="display:none;">Loading ...</span>
                                          </button>
                                      </div>
                                  </form>
                              </div>
                          </div>

                        </div>
                    </div> <!-- .card -->

                  </div><!--/.col-->
  
                     </div>

            </div>




    </div><!-- /#right-panel -->

    <!-- Right Panel -->


    <script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>


</body>
</html>
