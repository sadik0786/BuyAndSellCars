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
                <form name="COMPARE" method="POST" action="comp.do" >
    <table class="compare-cars-table compare-cars-pick" cellpadding="10" align='center'>
        <thead >
        <div class="form-group-md-5">
           <div class="ui-select">
                    <select class="form-control" name="txt1" >
                 <option  disabled selected  value="">Select Make</option>
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
                    <select class="form-control" name="txtm1" >
                        <option disabled selected value="">Select Model</option>
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
                    <select class="form-control" name="Car1" >
                <option value="">Select Variants</option>
       <optgroup label="Maruti Suzuki"></optgroup>
                 <optgroup label="1 "></optgroup>
                  <option value="2">LXI</option>
                  <option value="3">LXI (O)</option>
                  <option value="4">LDI</option>
                  <option value="5">LDI (O)</option>
                  <option value="6">VXI</option>
                  <option value="7">VDI</option>
                  <option value="8">VXI</option>
                  <option value="9">VDI</option>
                  <option value="10">ZXI</option>
                  <option value="11 ">VXI CNG</option>
                  <option value="12">ZDI</option>
                  <option value="13 ">VXI AT</option>
                   <option value=" 14">ZDI PLUS</option>
                  <option value=" 15">ZXI PLUS</option>
     <optgroup label="MS-SWIFT "></optgroup>
                  <option value="16">LDI BS-IV</option>
                  <option value="17">LXI</option>
                  <option value="18">VDI ABS</option>
                  <option value="19">VDI ABS BS-IV</option>
                  <option value="20">VXI</option>
                  <option value="21">VXI ABS</option>
                  <option value="22">ZDI</option>
                  <option value="23">ZXI</option>  
                  <option value="24">LDI BS-IV</option>
                  <option value="25">LXI</option>
                  <option value="26">VDI ABS</option>
                  
       <optgroup label=" MS-S_CROSS "></optgroup>
                   <option value="27">DDiS 200 Sigma</option>
                  <option value="28">DDiS 200 Delta</option>
                  <option value="29">DDiS 200 Zeta</option>
                  <option value="30 ">DDiS 200 Alpha</option>
                  <option value="31">DDiS 320 Alpha</option>
                  
       <optgroup label=" MS-ALTO K10 "></optgroup>         
                  <option value="32">LX</option>
                  <option value="33">LX(O)</option>
                  <option value="34">LXI</option>
                  <option value="35 ">LXI(O)</option>
                  <option value="36">VXI</option>
                  <option value="37">VXI (O)</option>
                  <option value="38">LXI GAS</option>
                  <option value="39">VXI AGS</option>
                  <option value="40">LXI CNG (O)</option>
                  <option value="41">VXI CNG (O)</option>
      <optgroup label="HY-XCENT"></optgroup> 
                  <option value="42">E Plus Petrol</option>
                  <option value="43 ">E Diesel</option>
                  <option value="44"> S Petrol</option>
                  <option value="45">SX Petrol</option>
                  <option value="46">E Plus Diesel</option>
                  <option value="47">S AT Petrol</option>
                  <option value="48">S Diesel</option>
                  <option value="49">SX Petrol (O))</option>
                  <option value="50">SX Diesel)</option>
                  <option value="51">SX Diesel (O)</option>
    <optgroup label="HY-I10"></optgroup> 
                  <option value="52">1.1 Era</option>
                  <option value="53">1.1 Magna</option>
                  <option value="54"> 1.1 Magna Special Edition</option>
                  <option value="55">1.1 Sportz MT</option>
                  <option value="56">1.1 Sportz MT LPG</option>
    <optgroup label="HY-I20"></optgroup> 
                  <option value="57">1.2 Base</option>
                  <option value="58">1.2 S</option>
                  <option value="59"> 1.4 Base</option>
                  <option value="60">1.2 SX AVN</option>
                  <option value="61">1.4 S</option>
                  <option value="62">1.4 SX AVN</option>
    <optgroup label="HY-CRETA"></optgroup> 
                  <option value="63">1.6 E Petrol</option>
                  <option value="64">1.4 E Plus </option>
                  <option value="65"> 1.6 E Plus </option>
                  <option value="66">1.4 S</option>
                  <option value="67">1.6 SX Plus </option>
                  <option value="68">1.4 S Plus </option>
                  <option value="69 ">1.6 SX Plus Dual Tone</option>
                  <option value="70">1.6 SX </option>
                  <option value="71">1.6 SX Plus AT</option>
                  <option value="72">1.6 SX Plus</option>
                  <option value="73">1.6 S Plus AT</option>
                  <option value="74"> 1.6 SX Plus Special Edition</option>
                  <option value="75">1.6 SX Plus Dual Tone</option>
                  <option value="76">1.6 SX (O)</option>
                  <option value="77">1.6 SX Plus AT</option>
     <optgroup label="VOL-POLO GT"></optgroup>
                <option value="78">GT TSI</option>
                <option value="79">GT TDI</option>
                
    <optgroup label="VOL-Tiguan"></optgroup>  
                <option value="80">Tiguan Comfortline</option>
                <option value="81">Tiguan Highline</option>
    <optgroup label="VOL-POLO GTI"></optgroup>            
                <option value="82">GTI STD</option>
    <optgroup label="BEETLE"></optgroup>     
                <option value="83">1.4 TSI</option>
     <optgroup label="TATA NANO"></optgroup>
                 <option value="84">XE GenX</option>
                  <option value="85 ">XM GenX</option>
                  <option value="86">  XT GenX</option>
                  <option value="87">XM CNG</option>
                  <option value="88">XMA GenX</option>
                  <option value="89">XTA GenX</option>
    <optgroup label="TATA SAFARI"></optgroup>
                <option value="90">2.2 LX 4x2</option>
                <option value="91">2.2 EX 4x2</option>
               
     <optgroup label="TATA ARIA"></optgroup>           
             <option value="92">LX 4x2 BS4</option>
               <option value="93">Pleasure 4x2 BS4</option>
              <option value="94">Pride 4x4</option>
                  
 <optgroup label="TATA INDIGO ECS"></optgroup>  
          <option value="95">eCS GLS MPFi BS4</option>
         <option value="96"> eCS LS TDI BS III</option>
        <option value="97">eCS LS</option>
          <option value="98">eCS LX TDI BS III</option>
         <option value="99"> eCS LX</option>
       <option value="100">eCS VX</option>
    <optgroup label="HONDA CITY"></optgroup>  
          <option value="101">S</option>
         <option value="102"> SV</option>
            <option value="103">V</option>
           <option value="104"> SVI</option>
          <option value="105"> V CVT </option>
          <option value="106">V</option>
         <option value="107">VX</option>
         <option value="108"> VX CVT</option>
           <option value="109">VX</option>
          <option value="110">ZX CVT</option>
         <option value="111"> ZX</option>
    <optgroup label="HONDA CR-V"></optgroup>  
           <option value="112">2.0L MT</option>
           <option value="113"> 2.0L AT</option>
           <option value="114"> 2.4L AT</option>
     <optgroup label="HONDA BRIO"></optgroup>
          <option value="115">E MT</option>
          <option value="116"> S MT</option>
          <option value="117"> VX MT</option>
          <option value="118"> VX AT</option>
    <optgroup label="HONDA WR-V"></optgroup>      
          <option value="119">S MT Petrol</option>
          <option value="120"> S MT Diesel</option>
          <option value="121"> VX MT Petrol</option>
          <option value="122"> VX MT Diesel</option>
                    </select>
                </div>
            </div>
        
      </thead>
  </table>
        </div>


    <div class="col-md-5" class="right" style="padding-bottom: 40px">
        <div class="col-md-5">
            <div class="test-center">
                <h3 style="color:yellow"><strong> CAR 2</strong></h3>
            </div></div>
    <table  align='center'>
        <thead >
        <div class="form-group-md-5">
           <div class="ui-select">
                    <select class="form-control" name="txt2" >
                 <option  disabled selected  value="">Select Make</option>
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
                    <select class="form-control" name="txtm2" >
                 <option  disabled selected value="">Select Model</option>
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
                    <select class="form-control" name="Car2" >
                <option value="">Select Variants</option>
       <optgroup label="Maruti Suzuki"></optgroup>
                 <optgroup label="1 "></optgroup>
                  <option value="2">LXI</option>
                  <option value="3">LXI (O)</option>
                  <option value="4">LDI</option>
                  <option value="5">LDI (O)</option>
                  <option value="6">VXI</option>
                  <option value="7">VDI</option>
                  <option value="8">VXI</option>
                  <option value="9">VDI</option>
                  <option value="10">ZXI</option>
                  <option value="11 ">VXI CNG</option>
                  <option value="12">ZDI</option>
                  <option value="13 ">VXI AT</option>
                   <option value=" 14">ZDI PLUS</option>
                  <option value=" 15">ZXI PLUS</option>
     <optgroup label="MS-SWIFT "></optgroup>
                  <option value="16">LDI BS-IV</option>
                  <option value="17">LXI</option>
                  <option value="18">VDI ABS</option>
                  <option value="19">VDI ABS BS-IV</option>
                  <option value="20">VXI</option>
                  <option value="21">VXI ABS</option>
                  <option value="22">ZDI</option>
                  <option value="23">ZXI</option>  
                  <option value="24">LDI BS-IV</option>
                  <option value="25">LXI</option>
                  <option value="26">VDI ABS</option>
                  
       <optgroup label=" MS-S_CROSS "></optgroup>
                   <option value="27">DDiS 200 Sigma</option>
                  <option value="28">DDiS 200 Delta</option>
                  <option value="29">DDiS 200 Zeta</option>
                  <option value="30 ">DDiS 200 Alpha</option>
                  <option value="31">DDiS 320 Alpha</option>
                  
       <optgroup label=" MS-ALTO K10 "></optgroup>         
                  <option value="32">LX</option>
                  <option value="33">LX(O)</option>
                  <option value="34">LXI</option>
                  <option value="35 ">LXI(O)</option>
                  <option value="36">VXI</option>
                  <option value="37">VXI (O)</option>
                  <option value="38">LXI GAS</option>
                  <option value="39">VXI AGS</option>
                  <option value="40">LXI CNG (O)</option>
                  <option value="41">VXI CNG (O)</option>
      <optgroup label="HY-XCENT"></optgroup> 
                  <option value="42">E Plus Petrol</option>
                  <option value="43 ">E Diesel</option>
                  <option value="44"> S Petrol</option>
                  <option value="45">SX Petrol</option>
                  <option value="46">E Plus Diesel</option>
                  <option value="47">S AT Petrol</option>
                  <option value="48">S Diesel</option>
                  <option value="49">SX Petrol (O))</option>
                  <option value="50">SX Diesel)</option>
                  <option value="51">SX Diesel (O)</option>
    <optgroup label="HY-I10"></optgroup> 
                  <option value="52">1.1 Era</option>
                  <option value="53">1.1 Magna</option>
                  <option value="54"> 1.1 Magna Special Edition</option>
                  <option value="55">1.1 Sportz MT</option>
                  <option value="56">1.1 Sportz MT LPG</option>
    <optgroup label="HY-I20"></optgroup> 
                  <option value="57">1.2 Base</option>
                  <option value="58">1.2 S</option>
                  <option value="59"> 1.4 Base</option>
                  <option value="60">1.2 SX AVN</option>
                  <option value="61">1.4 S</option>
                  <option value="62">1.4 SX AVN</option>
    <optgroup label="HY-CRETA"></optgroup> 
                  <option value="63">1.6 E Petrol</option>
                  <option value="64">1.4 E Plus </option>
                  <option value="65"> 1.6 E Plus </option>
                  <option value="66">1.4 S</option>
                  <option value="67">1.6 SX Plus </option>
                  <option value="68">1.4 S Plus </option>
                  <option value="69 ">1.6 SX Plus Dual Tone</option>
                  <option value="70">1.6 SX </option>
                  <option value="71">1.6 SX Plus AT</option>
                  <option value="72">1.6 SX Plus</option>
                  <option value="73">1.6 S Plus AT</option>
                  <option value="74"> 1.6 SX Plus Special Edition</option>
                  <option value="75">1.6 SX Plus Dual Tone</option>
                  <option value="76">1.6 SX (O)</option>
                  <option value="77">1.6 SX Plus AT</option>
     <optgroup label="VOL-POLO GT"></optgroup>
                <option value="78">GT TSI</option>
                <option value="79">GT TDI</option>
                
    <optgroup label="VOL-Tiguan"></optgroup>  
                <option value="80">Tiguan Comfortline</option>
                <option value="81">Tiguan Highline</option>
    <optgroup label="VOL-POLO GTI"></optgroup>            
                <option value="82">GTI STD</option>
    <optgroup label="BEETLE"></optgroup>     
                <option value="83">1.4 TSI</option>
     <optgroup label="TATA NANO"></optgroup>
                 <option value="84">XE GenX</option>
                  <option value="85 ">XM GenX</option>
                  <option value="86">  XT GenX</option>
                  <option value="87">XM CNG</option>
                  <option value="88">XMA GenX</option>
                  <option value="89">XTA GenX</option>
    <optgroup label="TATA SAFARI"></optgroup>
                <option value="90">2.2 LX 4x2</option>
                <option value="91">2.2 EX 4x2</option>
               
     <optgroup label="TATA ARIA"></optgroup>           
             <option value="92">LX 4x2 BS4</option>
               <option value="93">Pleasure 4x2 BS4</option>
              <option value="94">Pride 4x4</option>
                  
 <optgroup label="TATA INDIGO ECS"></optgroup>  
          <option value="95">eCS GLS MPFi BS4</option>
         <option value="96"> eCS LS TDI BS III</option>
        <option value="97">eCS LS</option>
          <option value="98">eCS LX TDI BS III</option>
         <option value="99"> eCS LX</option>
       <option value="100">eCS VX</option>
    <optgroup label="HONDA CITY"></optgroup>  
          <option value="101">S</option>
         <option value="102"> SV</option>
            <option value="103">V</option>
           <option value="104"> SVI</option>
          <option value="105"> V CVT </option>
          <option value="106">V</option>
         <option value="107">VX</option>
         <option value="108"> VX CVT</option>
           <option value="109">VX</option>
          <option value="110">ZX CVT</option>
         <option value="111"> ZX</option>
    <optgroup label="HONDA CR-V"></optgroup>  
           <option value="112">2.0L MT</option>
           <option value="113"> 2.0L AT</option>
           <option value="114"> 2.4L AT</option>
     <optgroup label="HONDA BRIO"></optgroup>
          <option value="115">E MT</option>
          <option value="116"> S MT</option>
          <option value="117"> VX MT</option>
          <option value="118"> VX AT</option>
    <optgroup label="HONDA WR-V"></optgroup>      
          <option value="119">S MT Petrol</option>
          <option value="120"> S MT Diesel</option>
          <option value="121"> VX MT Petrol</option>
          <option value="122"> VX MT Diesel</option>
                    </select>
                </div>
            </div>
        
      </thead>
  </table>
        </div>
    

   <div class="col-md-2" class="center" style="align-content: center; padding-top:110px;">
    <div class="col-md-12">
       <button type="submit" class=" btn-lg btn-warning" value="COM">COMPARE</button>
    </div>
</div>

 </form>
    
<!--    <div class="col-md-12"  align="center" style="padding-left:30px; padding-bottom: 20px;padding-top: 25px" >
        <button type="submit" class=" btn-lg btn-primary" value="COM">SHOW CAR DETAILS</button>
    </div>
</div>-->

    
    
    
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
 <script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>