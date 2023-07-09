<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          >
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          >
<title>Main Shop Page</title>
</head>
	<jsp:include page="header.jsp" />
	
<body>
    <div class="container" style="margin-top: 30px">
    <!--
    <div class="row">
    <div class="col-sm-12">
      <form action="/shop" method="GET" class="form-inline mb-3">
        <div class="form-group mr-2">
          <label for="sort">Sort by:</label>
          <select class="form-control" id="sort" name="sort">
            <option value="name">Name</option>
            <option value="price">Price</option>
            <option value="size">Size</option>
          </select>
        </div>
        <button type="submit" class="btn btn-primary">Sort</button>
      </form>
    </div>
  </div>
   -->
   
     <div class="row">
        <div class="col-sm-3">
        
           
          <div class="col-sm-10 sidenav">
            <h6 class="font-weight-bold">Category</h6>
            <div class="list-group list-group-flush list-group-no-border list-group-sm">
              <a href="/shop" class="list-group-item list-group-item-action">All Categories</a>
              <a href="/shop/Gender/Analgesics" class="list-group-item list-group-item-action">Analgesics</a>
              <a href="/shop/Gender/Antacids" class="list-group-item list-group-item-action">Antacids</a>
              <a href="/shop/Kids/Boys" class="list-group-item list-group-item-action">Antianxiety Drugs</a>
              <a href="/shop/Kids/Girls" class="list-group-item list-group-item-action">Barbiturates</a>
              <a href="/shop/Kids/Girls" class="list-group-item list-group-item-action">Beta-Blockers</a>
              <a href="/shop/Kids/Girls" class="list-group-item list-group-item-action">Bronchodilators</a>
              <a href="/shop/Kids/Girls" class="list-group-item list-group-item-action">Cold Cures</a>
              <a href="/shop/Kids/Girls" class="list-group-item list-group-item-action">Corticosteroids</a>
              <a href="" class="list-group-item list-group-item-action"></a>
            </div>
          </div> 
          
          <div class="col-sm-10 sidenav">
            <h6 class="font-weight-bold">Brand</h6>
            <div class="list-group list-group-flush list-group-no-border list-group-sm">
              <a href="/shop/brand/Cipla" class="list-group-item list-group-item-action">Cipla</a>
              <a href="/shop/brand/Lupin" class="list-group-item list-group-item-action">Lupin</a>
              <a href="/shop/brand/Mankind" class="list-group-item list-group-item-action">Mankind</a>
            </div>
          </div> 
           
           <div class="col-sm-10 sidenav">
            <h6 class="font-weight-bold">Type</h6>
            <div class="list-group list-group-flush list-group-no-border list-group-sm">
              <a href="/shop/style/Fever" class="list-group-item list-group-item-action">Fever</a>
              <a href="/shop/style/Cough" class="list-group-item list-group-item-action">Cough</a>
              <a href="/shop/style/Header" class="list-group-item list-group-item-action">Headache</a>
              <a href="/shop/style/BackPain" class="list-group-item list-group-item-action">BackPain</a>
            </div>
          </div> 
		        </div>
		        <div class="col-sm-9">
		        <input class="form-control" id="myInput" type="text" placeholder="Search any value.."> <br>
		    <table class ="table table-striped" border="1" width="100%" >  
			
			<thead class="thead-dark">
			<tr>
			<th>Medicine Image<th>Medicine Name</th><th>Price</th><th>Shop</th>  
			</tr> 
			</thead>
		 	<tbody id="myTable">
			<c:forEach items="${products}" var="user">
				<tr><td><img class="" height="150px" width="150px" src='/productImages/${user.image_Url}' alt="${user.productName}"></td>
				<td>${user.productName}</td>
				<td>${user.price}</td>
				<td><a href="/shop/viewProduct/${user.productCode}" class="btn btn-primary">View Product</a></td>
			
			</c:forEach>  
			</tbody>
			</table>
		</div>
        <!--
       <div class="col-sm-9">
            <div class="card" style="margin-top: 20px" >
	            <div class="row no-gutters">
			      <div class="col-sm-12">
			        <form action="/shop" method="GET" class="form-inline mb-3">
			          <input type="text" class="form-control mr-2" id="myInput" placeholder="Search products">
			          <button type="submit" class="btn btn-primary">Search</button>
			        </form>
			      </div>
    		</div>
             <c:forEach  var="product" items="${products}">
             
                <div class="row no-gutters" style="margin-top: 20px">
                	
                    <div class="col-sm-5 d-flex justify-content-center">
                        <img class="" height="150px" width="150px" src='/productImages/${product.image_Url}' alt="${product.productName}">
                    </div>
                    <div class="col-sm-7 d-flex justify-content-center">
                        <div class="card-body">
                            <h4 class="card-title" >${product.productName}</h4>
                            <h5> <span>$${product.price}</span></h5>
                           <h5>Size:
              				  <span> ${product.size}</span>
            				</h5>
                            <a href="/shop/viewProduct/${product.productCode}" class="btn btn-primary">View Product</a>
                        </div>
                    </div>
                </div>
                 </c:forEach> 
                 
            </div>
           
        </div>
    </div>-->
    </div>
    <script>
		$(document).ready(function(){
		  $("#myInput").on("keyup", function() {
		    var value = $(this).val().toLowerCase();
		    $("#myTable tr").filter(function() {
		      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
		    });
		  });
		});
</script>
</body>
</html>