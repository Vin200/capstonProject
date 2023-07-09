<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script>
        $(document).ready(function() {
            let nameSortOrder = 'asc';
            let brandSortOrder = 'asc';

            $("#nameHeader").click(function() {
                nameSortOrder = toggleSortOrder(nameSortOrder);
                sortTable('name', nameSortOrder);
            });

            $("#brandHeader").click(function() {
                brandSortOrder = toggleSortOrder(brandSortOrder);
                sortTable('brand', brandSortOrder);
            });

            function toggleSortOrder(sortOrder) {
                return sortOrder === 'asc' ? 'desc' : 'asc';
            }

            function sortTable(column, sortOrder) {
                let table = $("#medicineTable");
                let rows = table.find("tbody tr").toArray();

                rows.sort(function(a, b) {
                    let aValue = $(a).find("td." + column).text();
                    let bValue = $(b).find("td." + column).text();

                    if (column === 'name' || column === 'brand') {
                        return sortOrder === 'asc' ? aValue.localeCompare(bValue) : bValue.localeCompare(aValue);
                    }
                });

                table.children("tbody").empty().append(rows);
            }
        });
    </script>
    <style>
        .sortable {
            cursor: pointer;
        }
        .sortable:hover {
            text-decoration: underline;
        }
        .image-span {
  display: inline-block;
  width: 20px;
  height: 20px;
  background-image: url('/productImages/sort.png');
  background-size: cover;
  background-position: center;
}
      
        .asc .sort-arrow {
            border-width: 0 5px 5px 5px;
            border-color: transparent transparent #000000 transparent;
        }
        .desc .sort-arrow {
            border-width: 5px 5px 0 5px;
            border-color: #000000 transparent transparent transparent;
        }
    </style>
    <title>Medicine Management Page</title>
</head>

<body>
    <jsp:include page="adminHeader.jsp" />
    <div class="container">
        <a href="/admin/product/add" style="margin: 20px 0" class="btn btn-primary">Add Medicine</a>
        <table class="table table-striped" id="medicineTable">
            <thead class="thead-light">
                <tr>
                    <th class="sortable" id="codeHeader">
                        Code
                    </th>
                    <th class="sortable" id="nameHeader">
                        Name
                        <span class="image-span"></span>
                    </th>
                    <th class="sortable" id="brandHeader">
                        Brand
                        <span class="image-span"></span>
                    </th>
                    <th>
                        Preview Image
                    </th>
                    <th>
                        Edit
                    </th>
                    <th>
                        Delete
                    </th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="product" items="${products}">
                    <c:url var="editLink" value="/admin/product/Edit">
                        <c:param name="productId" value="${product.productCode}" />
                    </c:url>
                    <c:url var="deleteLink" value="/admin/product/Delete">
                        <c:param name="productId" value="${product.productCode}" />
                    </c:url>
                    <tr>
                        <td class="code">${product.productCode}</td>
                        <td class="name">${product.productName}</td>
                        <td class="brand">${product.getProductCategory().getBrandName()}</td>
                        <td>
                            <img height="100px" width="100px" src="/productImages/${product.image_Url}" alt="">
                        </td>
                        <td><a href="${editLink}">Edit</a></td>
                        <td><a href="${deleteLink}" onclick="return confirm('Are you sure you want to delete this product?')">Delete</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>