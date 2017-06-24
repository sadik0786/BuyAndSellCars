<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>compare page</title>
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
          <img class="second-slide" src="images/sl2.jpg" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Another example headline.</h1>
              <p>Car</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="images/sl3.jpg" alt="Third slide">
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
    <!-- /.carousel -->
     <div class="col-md-12" class="left">
        <div class="col-md-12">
    <h3 align="center">you can compare car here</h3>
         <div align="center">
             <p> <strong>Comparing cars is super easy at BuyAndSell Pvt Ltd compare cars section.
          Select at least 2 brand-model-variants and click on the 'Compare cars' button to compare cars in India.
          On the next page, you will see the selected car's comparison based on
          their specs, price, mileage, features, and overall performance. </strong></p>
         </div> </div></div></div>  
            <div class="col-md-5" class="left">
        <div class="col-md-5">
            <div class="test-center">
               
                <h3 style="color:red"><strong> CAR 1</strong></h3>
            </div></div>
            <form name="COMPARE" method="POST" >
    <table class="compare-cars-table compare-cars-pick" cellpadding="10" align='center'>
        <thead >
        <div class="form-group-md-5">
           <div class="ui-select">
                    <select class="form-control" name="compage" >
                 <option value="">Select Make</option>
                     <option value="Maruti Suzuki">MARUTI SUZUKI</option>
                      <option value="Hyundai" >HYUNDAI</option>
                      <option value="Volkswagen" >VOLKSWAGEN</option>
                      <option value="Tata" >TATA</option>
                      <option value="Honda" >HONDA</option>
                    </select>
                </div>
            </div>
        <br>
        <div class="form-group-md-5">
                <div class="ui-select">
                    <select class="form-control" name="compage" >
                 <option value="">Select Model</option>
          <optgroup label="Maruti Suzuki"></optgroup>
                <option value="Ertiga">MS-ERTIGA</option>
                <option value="Swift">MS-SWIFT</option>
                <option value="S cross"> MS-S_CROSS</option>
                <option value="Alto K10">MS-ALTO K10</option>
        <optgroup label="Hyundai"></optgroup>
                <option value="Xcent">HY-XCENT</option>
                <option value="i10">HY-I10</option>
                <option value="i20">HY-I20</option>
                <option value="Creta">HY-CRETA</option>
        <optgroup label="Volkswagen"></optgroup>
                <option value="Polo-GT">VOL-POLO-GT</option>
                <option value="TIGUAN">VOL-TIGUAN</option>
                <option value="POLO-GTI">VOL-POLO-GTI</option>
                <option value="Beetle">VOL-BEETLE</option>
        <optgroup label="Tata"></optgroup>
                <option value="NANO">TATA NANO</option>
                <option value="SAFARI">TATA SAFARI</option>
                <option value="ARIA">TATA ARIA</option>
                <option value="INDIGO">TATA INDIGO-ECS</option>
        <optgroup label="Honda"></optgroup>
                  <option value="City">HONDA CITY </option>
                <option value="CR_V">HONDA CR-V</option>
                <option value="BRIO">HONDA BRIO</option>
                <option value="WR-V">HONDA WR-V</option>
                    </select>
                </div>
            </div>
        <br>
         <div class="form-group-md-5">
                <div class="ui-select">
                    <select class="form-control" name="compage" >
                <option value="">Select Variants</option>
          <optgroup label="Maruti Suzuki"></optgroup>
                 <optgroup label="MS-ERTIGA "></optgroup>
                  <option value="LXI">LXI</option>
                  <option value="LXI (O)">LXI (O)</option>
                  <option value="LDI">LDI</option>
                  <option value="LDI(O)">LDI (O)</option>
                  <option value="VXI">VXI</option>
                  <option value="VDI">VDI</option>
                  <option value="VXI">VXI</option>
                  <option value="VDI">VDI</option>
                  <option value="ZXI">ZXI</option>
                  <option value="VXI CNG">VXI CNG</option>
                  <option value="ZDI">ZDI</option>
                  <option value="VXI AT">VXI AT</option>
                   <option value="ZDI PLUS">ZDI PLUS</option>
                  <option value="ZXI PLUS">ZXI PLUS</option>
                   <optgroup label="MS-SWIFT "></optgroup>
                  <option value="LDI BS-IV">LDI BS-IV</option>
                  <option value="LXI">LXI</option>
                  <option value="VDI ABS">VDI ABS</option>
                  <option value="VDI ABS BS-IV ">VDI ABS BS-IV</option>
                  <option value="VXI">VXI</option>
                  <option value="VXI ABS">VXI ABS</option>
                  <option value="ZDI">ZDI</option>
                  <option value="ZXI">ZXI</option>  
                  <option value="LDI BS-IV">LDI BS-IV</option>
                  <option value="LXI">LXI</option>
                  <option value="VDI ABS">VDI ABS</option>
                  
       <optgroup label=" MS-S_CROSS "></optgroup>
                   <option value="DDiS 200 Sigma">DDiS 200 Sigma</option>
                  <option value="DDiS 200 Delta">DDiS 200 Delta</option>
                  <option value="DDiS 200 Zeta">DDiS 200 Zeta</option>
                  <option value="DDiS 200 Alpha ">DDiS 200 Alpha</option>
                  <option value="DDiS 320 Alpha">DDiS 320 Alpha</option>
                  
       <optgroup label=" MS-ALTO K10 "></optgroup>         
                  <option value="LX">LX</option>
                  <option value="LX(O)">LX(O)</option>
                  <option value="LXI">LXI</option>
                  <option value="LXI(O) ">LXI(O)</option>
                  <option value="VXI">VXI</option>
                  <option value="VXI (O)">VXI (O)</option>
                  <option value="LXI GAS">LXI GAS</option>
                  <option value="VXI AGS">VXI AGS</option>
                  <option value="LXI CNG (O">LXI CNG (O)</option>
                  <option value="VXI CNG (O)">VXI CNG (O)</option>
      <optgroup label="HY-XCENT"></optgroup> 
                  <option value="E Plus Petrol">E Plus Petrol</option>
                  <option value="E Diesel ">E Diesel</option>
                  <option value="S Petrol"> S Petrol</option>
                  <option value="SX Petrol">SX Petrol</option>
                  <option value="E Plus Diesel">E Plus Diesel</option>
                  <option value="S AT Petrol">S AT Petrol</option>
                  <option value="S Diesel">S Diesel</option>
                  <option value="SX Petrol (O)">SX Petrol (O))</option>
                  <option value="SX Diesel">SX Diesel)</option>
                  <option value="SX Diesel (O)">SX Diesel (O)</option>
    <optgroup label="HY-I10"></optgroup> 
                  <option value="1.1 Era">1.1 Era</option>
                  <option value="1.1 Magna ">1.1 Magna</option>
                  <option value="1.1 Magna Special Edition"> 1.1 Magna Special Edition</option>
                  <option value="1.1 Sportz MT">1.1 Sportz MT</option>
                  <option value="1.1 Sportz MT LPG">1.1 Sportz MT LPG</option>
    <optgroup label="HY-I20"></optgroup> 
                  <option value="1.2 Base">1.2 Base</option>
                  <option value="1.2 S">1.2 S</option>
                  <option value="1.4 Base"> 1.4 Base</option>
                  <option value="1.2 SX AVN">1.2 SX AVN</option>
                  <option value="1.4 S">1.4 S</option>
                  <option value="1.4 SX AVN">1.4 SX AVN</option>
    <optgroup label="HY-CRETA"></optgroup> 
                  <option value="1.6 E Petrol">1.6 E Petrol</option>
                  <option value="1.4 E Plus">1.4 E Plus </option>
                  <option value="1.6 E Plus"> 1.6 E Plus </option>
                  <option value="1.4 S">1.4 S</option>
                  <option value="1.6 SX Plus">1.6 SX Plus </option>
                  <option value="1.4 S Plus">1.4 S Plus </option>
                  <option value="1.6 SX Plus Dual Tone ">1.6 SX Plus Dual Tone</option>
                  <option value="1.6 SX">1.6 SX </option>
                  <option value="1.6 SX Plus AT">1.6 SX Plus AT</option>
                  <option value="1.6 SX Plus">1.6 SX Plus</option>
                  <option value="1.6 S Plus AT">1.6 S Plus AT</option>
                  <option value="1.6 SX Plus Special Edition"> 1.6 SX Plus Special Edition</option>
                  <option value="1.6 SX Plus Dual Tone">1.6 SX Plus Dual Tone</option>
                  <option value="1.6 SX (O)">1.6 SX (O)</option>
                  <option value="1.6 SX Plus AT">1.6 SX Plus AT</option>
     <optgroup label="VOL-POLO GT"></optgroup>
                <option value="GT TSI">GT TSI</option>
                <option value="GT TDI">GT TDI</option>
                
    <optgroup label="VOL-Tiguan"></optgroup>  
                <option value="Tiguan Comfortline">Tiguan Comfortline</option>
                <option value="Tiguan Highline">Tiguan Highline</option>
    <optgroup label="VOL-POLO GTI"></optgroup>            
                <option value="GTI STD">GTI STD</option>
    <optgroup label="BEETLE"></optgroup>     
                <option value="1.4 TSI">1.4 TSI</option>
     <optgroup label="TATA NANO"></optgroup>
                 <option value="XE GenX">XE GenX</option>
                  <option value="XM GenX ">XM GenX</option>
                  <option value="XT GenX">  XT GenX</option>
                  <option value="XM CNG">XM CNG</option>
                  <option value="XMA GenX">XMA GenX</option>
                  <option value="XTA GenX">XTA GenX</option>
    <optgroup label="TATA SAFARI"></optgroup>
                <option value="2.2 LX 4x2">2.2 LX 4x2</option>
                <option value="2.2 EX 4x2">2.2 EX 4x2</option>
               
     <optgroup label="TATA ARIA"></optgroup>           
             <option value="SUV, Manual, Diesel 15.1Kmpl">LX 4x2 BS4</option>
               <option value="SUV, Manual, Diesel 15.1Kmpl">Pleasure 4x2 BS4</option>
              <option value="SUV, Manual, Diesel 15.1Kmpl">Pride 4x4</option>
                  
 <optgroup label="TATA INDIGO ECS"></optgroup>  
          <option value="eCS GLS MPFi BS4">eCS GLS MPFi BS4</option>
         <option value="eCS LS TDI BS III"> eCS LS TDI BS III</option>
        <option value="eCS LS">eCS LS</option>
          <option value="eCS LX TDI BS II">eCS LX TDI BS III</option>
         <option value="eCS LX"> eCS LX</option>
       <option value="eCS VX">eCS VX</option>
    <optgroup label="HONDA CITY"></optgroup>  
          <option value="S">S</option>
         <option value="SV"> SV</option>
            <option value="V">V</option>
           <option value="SVI"> SVI</option>
          <option value="V CVT"> V CVT </option>
          <option value="V">V</option>
         <option value="VX">VX</option>
         <option value="VX CVT"> VX CVT</option>
           <option value="VX">VX</option>
          <option value="ZX CVT">ZX CVT</option>
         <option value="ZX"> ZX</option>
    <optgroup label="HONDA CR-V"></optgroup>  
           <option value="2.0L MT">2.0L MT</option>
           <option value="2.0L AT"> 2.0L AT</option>
           <option value="2.4L AT"> 2.4L AT</option>
     <optgroup label="HONDA BRIO"></optgroup>
          <option value="E MT">E MT</option>
          <option value="S MT"> S MT</option>
          <option value="VX MT"> VX MT</option>
          <option value="VX AT"> VX AT</option>
    <optgroup label="HONDA WR-V"></optgroup>      
		  <option value="S MT Petrol">S MT Petrol</option>
          <option value="S MT Diesel"> S MT Diesel</option>
		  <option value="VX MT Petrol"> VX MT Petrol</option>
          <option value="VX MT Diesel"> VX MT Diesel</option>
                    </select>
                </div>
            </div>
        
      </thead>
  </table>
 </form>
        </div>

   <div class="col-md-2" class="center" style="align-content: center; padding-top:110px;">
    <div class="col-md-12">
        <a href="#"><button type="submit" class=" btn-lg btn-warning" value="COM">COMPARE</button></a>
    </div>
</div>



    <div class="col-md-5" class="right" style="padding-bottom: 40px">
        <div class="col-md-5">
            <div class="test-center">
                <h3 style="color:yellow"><strong> CAR 2</strong></h3>
            </div></div>
            <form name="COMPARE" method="POST" >
    <table  align='center'>
        <thead >
        <div class="form-group-md-5">
           <div class="ui-select">
                    <select class="form-control" name="compage" >
                 <option value="">Select Make</option>
                     <option value="Maruti Suzuki">MARUTI SUZUKI</option>
                      <option value="Hyundai" >HYUNDAI</option>
                      <option value="Volkswagen" >VOLKSWAGEN</option>
                      <option value="Tata" >TATA</option>
                      <option value="Honda" >HONDA</option>
                    </select>
                </div>
            </div>
        <br>
        <div class="form-group-md-5">
                <div class="ui-select">
                    <select class="form-control" name="compage" >
                 <option value="">Select Model</option>
          <optgroup label="Maruti Suzuki"></optgroup>
                <option value="Ertiga">MS-ERTIGA</option>
                <option value="Swift">MS-SWIFT</option>
                <option value="S cross"> MS-S_CROSS</option>
                <option value="Alto K10">MS-ALTO K10</option>
        <optgroup label="Hyundai"></optgroup>
                <option value="Xcent">HY-XCENT</option>
                <option value="i10">HY-I10</option>
                <option value="i20">HY-I20</option>
                <option value="Creta">HY-CRETA</option>
        <optgroup label="Volkswagen"></optgroup>
                <option value="Polo-GT">VOL-POLO-GT</option>
                <option value="TIGUAN">VOL-TIGUAN</option>
                <option value="POLO-GTI">VOL-POLO-GTI</option>
                <option value="Beetle">VOL-BEETLE</option>
        <optgroup label="Tata"></optgroup>
                <option value="NANO">TATA NANO</option>
                <option value="SAFARI">TATA SAFARI</option>
                <option value="ARIA">TATA ARIA</option>
                <option value="INDIGO">TATA INDIGO-ECS</option>
        <optgroup label="Honda"></optgroup>
                  <option value="City">HONDA CITY </option>
                <option value="CR_V">HONDA CR-V</option>
                <option value="BRIO">HONDA BRIO</option>
                <option value="WR-V">HONDA WR-V</option>
                    </select>
                </div>
            </div>
        <br>
         <div class="form-group-md-5">
                <div class="ui-select">
                    <select class="form-control" name="compage" >
                <option value="">Select Variants</option>
          <optgroup label="Maruti Suzuki"></optgroup>
                 <optgroup label="MS-ERTIGA "></optgroup>
                  <option value="LXI">LXI</option>
                  <option value="LXI (O)">LXI (O)</option>
                  <option value="LDI">LDI</option>
                  <option value="LDI(O)">LDI (O)</option>
                  <option value="VXI">VXI</option>
                  <option value="VDI">VDI</option>
                  <option value="VXI">VXI</option>
                  <option value="VDI">VDI</option>
                  <option value="ZXI">ZXI</option>
                  <option value="VXI CNG">VXI CNG</option>
                  <option value="ZDI">ZDI</option>
                  <option value="VXI AT">VXI AT</option>
                   <option value="ZDI PLUS">ZDI PLUS</option>
                  <option value="ZXI PLUS">ZXI PLUS</option>
                   <optgroup label="MS-SWIFT "></optgroup>
                  <option value="LDI BS-IV">LDI BS-IV</option>
                  <option value="LXI">LXI</option>
                  <option value="VDI ABS">VDI ABS</option>
                  <option value="VDI ABS BS-IV ">VDI ABS BS-IV</option>
                  <option value="VXI">VXI</option>
                  <option value="VXI ABS">VXI ABS</option>
                  <option value="ZDI">ZDI</option>
                  <option value="ZXI">ZXI</option>  
                  <option value="LDI BS-IV">LDI BS-IV</option>
                  <option value="LXI">LXI</option>
                  <option value="VDI ABS">VDI ABS</option>
                  
       <optgroup label=" MS-S_CROSS "></optgroup>
                   <option value="DDiS 200 Sigma">DDiS 200 Sigma</option>
                  <option value="DDiS 200 Delta">DDiS 200 Delta</option>
                  <option value="DDiS 200 Zeta">DDiS 200 Zeta</option>
                  <option value="DDiS 200 Alpha ">DDiS 200 Alpha</option>
                  <option value="DDiS 320 Alpha">DDiS 320 Alpha</option>
                  
       <optgroup label=" MS-ALTO K10 "></optgroup>         
                  <option value="LX">LX</option>
                  <option value="LX(O)">LX(O)</option>
                  <option value="LXI">LXI</option>
                  <option value="LXI(O) ">LXI(O)</option>
                  <option value="VXI">VXI</option>
                  <option value="VXI (O)">VXI (O)</option>
                  <option value="LXI GAS">LXI GAS</option>
                  <option value="VXI AGS">VXI AGS</option>
                  <option value="LXI CNG (O">LXI CNG (O)</option>
                  <option value="VXI CNG (O)">VXI CNG (O)</option>
      <optgroup label="HY-XCENT"></optgroup> 
                  <option value="E Plus Petrol">E Plus Petrol</option>
                  <option value="E Diesel ">E Diesel</option>
                  <option value="S Petrol"> S Petrol</option>
                  <option value="SX Petrol">SX Petrol</option>
                  <option value="E Plus Diesel">E Plus Diesel</option>
                  <option value="S AT Petrol">S AT Petrol</option>
                  <option value="S Diesel">S Diesel</option>
                  <option value="SX Petrol (O)">SX Petrol (O))</option>
                  <option value="SX Diesel">SX Diesel)</option>
                  <option value="SX Diesel (O)">SX Diesel (O)</option>
    <optgroup label="HY-I10"></optgroup> 
                  <option value="1.1 Era">1.1 Era</option>
                  <option value="1.1 Magna ">1.1 Magna</option>
                  <option value="1.1 Magna Special Edition"> 1.1 Magna Special Edition</option>
                  <option value="1.1 Sportz MT">1.1 Sportz MT</option>
                  <option value="1.1 Sportz MT LPG">1.1 Sportz MT LPG</option>
    <optgroup label="HY-I20"></optgroup> 
                  <option value="1.2 Base">1.2 Base</option>
                  <option value="1.2 S">1.2 S</option>
                  <option value="1.4 Base"> 1.4 Base</option>
                  <option value="1.2 SX AVN">1.2 SX AVN</option>
                  <option value="1.4 S">1.4 S</option>
                  <option value="1.4 SX AVN">1.4 SX AVN</option>
    <optgroup label="HY-CRETA"></optgroup> 
                  <option value="1.6 E Petrol">1.6 E Petrol</option>
                  <option value="1.4 E Plus">1.4 E Plus </option>
                  <option value="1.6 E Plus"> 1.6 E Plus </option>
                  <option value="1.4 S">1.4 S</option>
                  <option value="1.6 SX Plus">1.6 SX Plus </option>
                  <option value="1.4 S Plus">1.4 S Plus </option>
                  <option value="1.6 SX Plus Dual Tone ">1.6 SX Plus Dual Tone</option>
                  <option value="1.6 SX">1.6 SX </option>
                  <option value="1.6 SX Plus AT">1.6 SX Plus AT</option>
                  <option value="1.6 SX Plus">1.6 SX Plus</option>
                  <option value="1.6 S Plus AT">1.6 S Plus AT</option>
                  <option value="1.6 SX Plus Special Edition"> 1.6 SX Plus Special Edition</option>
                  <option value="1.6 SX Plus Dual Tone">1.6 SX Plus Dual Tone</option>
                  <option value="1.6 SX (O)">1.6 SX (O)</option>
                  <option value="1.6 SX Plus AT">1.6 SX Plus AT</option>
     <optgroup label="VOL-POLO GT"></optgroup>
                <option value="GT TSI">GT TSI</option>
                <option value="GT TDI">GT TDI</option>
                
    <optgroup label="VOL-Tiguan"></optgroup>  
                <option value="Tiguan Comfortline">Tiguan Comfortline</option>
                <option value="Tiguan Highline">Tiguan Highline</option>
    <optgroup label="VOL-POLO GTI"></optgroup>            
                <option value="GTI STD">GTI STD</option>
    <optgroup label="BEETLE"></optgroup>     
                <option value="1.4 TSI">1.4 TSI</option>
     <optgroup label="TATA NANO"></optgroup>
                 <option value="XE GenX">XE GenX</option>
                  <option value="XM GenX ">XM GenX</option>
                  <option value="XT GenX">  XT GenX</option>
                  <option value="XM CNG">XM CNG</option>
                  <option value="XMA GenX">XMA GenX</option>
                  <option value="XTA GenX">XTA GenX</option>
    <optgroup label="TATA SAFARI"></optgroup>
                <option value="2.2 LX 4x2">2.2 LX 4x2</option>
                <option value="2.2 EX 4x2">2.2 EX 4x2</option>
               
     <optgroup label="TATA ARIA"></optgroup>           
             <option value="SUV, Manual, Diesel 15.1Kmpl">LX 4x2 BS4</option>
               <option value="SUV, Manual, Diesel 15.1Kmpl">Pleasure 4x2 BS4</option>
              <option value="SUV, Manual, Diesel 15.1Kmpl">Pride 4x4</option>
                  
 <optgroup label="TATA INDIGO ECS"></optgroup>  
          <option value="eCS GLS MPFi BS4">eCS GLS MPFi BS4</option>
         <option value="eCS LS TDI BS III"> eCS LS TDI BS III</option>
        <option value="eCS LS">eCS LS</option>
          <option value="eCS LX TDI BS II">eCS LX TDI BS III</option>
         <option value="eCS LX"> eCS LX</option>
       <option value="eCS VX">eCS VX</option>
    <optgroup label="HONDA CITY"></optgroup>  
          <option value="S">S</option>
         <option value="SV"> SV</option>
            <option value="V">V</option>
           <option value="SVI"> SVI</option>
          <option value="V CVT"> V CVT </option>
          <option value="V">V</option>
         <option value="VX">VX</option>
         <option value="VX CVT"> VX CVT</option>
           <option value="VX">VX</option>
          <option value="ZX CVT">ZX CVT</option>
         <option value="ZX"> ZX</option>
    <optgroup label="HONDA CR-V"></optgroup>  
           <option value="2.0L MT">2.0L MT</option>
           <option value="2.0L AT"> 2.0L AT</option>
           <option value="2.4L AT"> 2.4L AT</option>
     <optgroup label="HONDA BRIO"></optgroup>
          <option value="E MT">E MT</option>
          <option value="S MT"> S MT</option>
          <option value="VX MT"> VX MT</option>
          <option value="VX AT"> VX AT</option>
    <optgroup label="HONDA WR-V"></optgroup>      
		  <option value="S MT Petrol">S MT Petrol</option>
          <option value="S MT Diesel"> S MT Diesel</option>
		  <option value="VX MT Petrol"> VX MT Petrol</option>
          <option value="VX MT Diesel"> VX MT Diesel</option>
                    </select>
                </div>
            </div>
        
      </thead>
  </table>
 </form>
        </div>
    
    
<!--    <div class="col-md-12"  align="center" style="padding-left:30px; padding-bottom: 20px;padding-top: 25px" >
        <button type="submit" class=" btn-lg btn-primary" value="COM">SHOW CAR DETAILS</button>
    </div>
</div>-->

    
    
    
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
 <script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>