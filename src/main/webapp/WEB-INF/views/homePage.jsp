<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <title>Medicare Landing Page</title>
</head>

<body>
  <!-- Navbar -->
  
  <jsp:include page="header.jsp" />
  
  <!-- Hero Section -->
  <header class="jumbotron jumbotron-fluid text-center">
    <div class="container" style="background-image: url(/productImages/bgimage.jpeg);">
      <h1 class="display-4" style="color:yellow;">Welcome to Medicare</h1>
      <p class="lead" style="color:white;">Providing quality healthcare services for everyone</p>
      <a href="/shop" class="btn btn-primary btn-lg">Buy</a>
      <!-- <a href="/shop"
				class="btn btn-lg btn-outline-primary text-uppercase px-12">
				Buy 
			</a>
			-->
    </div>
  </header>

  <!-- Features Section -->
  <section class="py-5">
  <h2 style="text-align: center; color:red;">Top Medicines</h2>
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <div class="card mb-4">
            <img src="/images/medicine1.jpg" class="card-img-top" alt="Feature 1" height="150px">
            <div class="card-body">
              <h5 class="card-title">Levothyroxine</h5>
              <p class="card-text">It is Used to treat an underactive thyroid gland condition called hypothyrodism</p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card mb-4">
            <img src="/images/medicine2.jpg" class="card-img-top" alt="Feature 2" height="150px">
            <div class="card-body">
              <h5 class="card-title">Omeprazole</h5>
              <p class="card-text">This Medication is usually prescribed to someone experiencing gastroesophageal reflux</p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card mb-4">
            <img src="/images/medicine3.jpg" class="card-img-top" alt="Feature 3" height="150px">
            <div class="card-body">
              <h5 class="card-title">Albuterol</h5>
              <p class="card-text">This medicine prevents, and treats breathing difficulties, wheezing, coughing and other related conditions</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Footer -->
  <footer class="bg-dark text-light py-3">
    <div class="container text-center">
      <p>&copy; 2023 Medicare. All rights reserved.</p>
    </div>
  </footer>

  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>