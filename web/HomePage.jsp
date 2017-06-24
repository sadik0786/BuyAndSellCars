
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <meta http-equiv="X-UA-Compatible" content="IE=edge">
       <meta name="viewport" content="width=device-width,initial-scale=1">
        <title>home page</title>
        
        <link rel="stylesheet" type="text/css" href="cssstyle/HomePage.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        
        <style>
/* Carousel base class */
.carousel {
  height: 350px;
  margin-bottom: 60px;
}
/* Since positioning the image, we need to help out the caption */
.carousel-caption {
  z-index: 10;
}

/* Declare heights because of positioning of img element */
.carousel .item {
  height: 350px;
  background-color: #777;
}
.carousel-inner > .item > img {
  position: absolute;
  top: 0;
  left: 0;
  min-width: 100%;
  height: 350px;
}

            body{
                background: #28a4c9;
            }
            .button {
    background-color:chocolate;
    border: 5px;
    color: black;
   align-content: center;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 20px;
    margin:auto;
    cursor: pointer;
}


        </style>
</head>
<body>
  <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="first-slide" src="images/sl1.jpg" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Car Images</h1>
              <p>You Can Look More Car .</p>
              <p><a class="btn btn-lg btn-primary" href="Gallery.html" role="button" target="NavigationFrame">See More Cars</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src="images/sl3.jpg" alt="second slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>One more for good.</h1>
              <p>Cars</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
            </div>
          </div>
        </div>
          <div class="item">
          <img class="third-slide" src="images/sl4.jpg" alt="third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>One more for good.</h1>
              <p>Cars</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
            </div>
          </div>
        </div>
          <div class="item">
          <img class="forth-slide" src="images/sl5.jpg" alt="forth slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>One more for good.</h1>
              <p>Cars</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
            </div>
          </div>
        </div>
          <div class="item">
          <img class="fifth-slide" src="images/sl6.jpg" alt="fifth slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>One more for good.</h1>
              <p>Cars</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel end -->

    <div class="container-fluid">
        <h1  style="color:maroon" >3 Things to Look For When Finding Your Perfect Vehicle Online</h1>
        <p> Buying a car online takes time and effort to find a suitable match. It's certainly possible, but you may have to spend longer than you'd like weeding out the less-desirable options.Sure, you can use a dealership or a car auction, but an online purchase can cut out the middle man and allow you to focus on finding what you want in a vehicle.
However, it's important to be a savvy online shopper. According to consumer advocacy group CHOICE, two-thirds of car buyers (even if it's a new car) experienced problems with their vehicles in the first five years1.
What's the cost of buying a lemon? CHOICE found that the average amount spent by Australians with a faulty vehicle was $858, as well as a huge 31 hours of their own time. Add the amount in lost wages to that figure and you could be looking at a $1,295 loss for one ill-informed decision1.
So, it makes sense to create a great shortlist of vehicular gems to go see and test-drive from your online search.
Here are three tips to help you on your way:
        </p>
        <h3>1. Check the car's history</h3>
        <p><strong style="color:blue" >Every car has its past</strong> - a good one can help you get the most return on your money, though a bad one
 could land you in hot water. Fortunately, you can have a better picture with a quick Car History report.
All you need is the car's Win number, and you can check the 
vehicle's financial liability, whether it has been stolen, damaged or written-off, and much more. 
A Car History report is the ultimate in consumer power, and all you need to do is ask the owner for the Win, if they
haven't provided it already via the online listing. </p>
        <img src="images/multi.jpg" class="img-responsive" style="width: 100%" height="100px" >
        <h3>2. Do your research</h3>
        <p><strong style="color:blue">Finding a car</strong>: that Will stick by you for a few good years means you should know a bit more
            about your potential car purchase beforehand to see if you Will be a good fit.

Fortunately, there's no shortage of online reviews to settle your car-buying nerves, from both
automotive experts and individual owners who've had to live with that model in the past.

For a small amount of time, you can get a big idea what the consensus is regarding that car. 
Just make sure you're researching the right make, model and year and you should have a good 
foundation for a smart purchase.</p>
        <h3>3. Benchmark the price</h3>
        <p><strong style="color:blue" >Unless you're planning</strong> on buying, a car will be the second most expensive belonging you ever spend money 
            on (behind a house), so it pays to get the best possible price - after all, commitment is not cheap!
        The trouble is, different used cars are in different conditions, and have travelled different distances - it's hard to make an apples-to-apples comparison.
        However, as part of your Car History report, you can see estimate sales price comparison of similar cars in this range. You can also get information on the previous sales price, including when it was last reported as sold, how much it went for and how it was sold (online, auction, etc.).
If your seller is trying to make a quick buck at your expense, you'll know when they're charging too much. 
It also gives you more room to negotiate, on top of the benefits of ensuring the new purchase is in a safe and
road-worthy condition - unfortunately, not all of the cars on Australia's roads are.
Buying a car is a long-term commitment. To find your perfect match, have a look into 
the Car History report before splashing the cash.
        </p>
    </div>
  
       <script type="text/javascript" src="js/jquery-3.2.1.js"></script>
       <script type="text/javascript" src="js/bootstrap.min.js"></script>
<script>
// Get the button, and when the user clicks on it, execute myFunction
document.getElementById("myBtn").onclick = function() {myFunction()};

/* myFunction toggles between adding and removing the show class, which is used to hide and show the dropdown content */
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}
</script>

</body>
</html>

