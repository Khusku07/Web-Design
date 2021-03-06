<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="pack.DbConnection"%>
<!--
        Author: W3layouts
        Author URL: http://w3layouts.com
        License: Creative Commons Attribution 3.0 Unported
        License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">
    <head>
        <title> Saline Level Monitoring System </title>
        <!-- Meta tag Keywords -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Scholarly web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!--// Meta tag Keywords -->
        <!-- css files -->
        <link rel="stylesheet" href="css/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
        <link rel="stylesheet" href="css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
        <link rel="stylesheet" href="css/swipebox.css">
        <link rel="stylesheet" href="css/jquery-ui.css" />
        <!-- //css files -->
        <!-- online-fonts -->
        <link href="//fonts.googleapis.com/css?family=Exo+2:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=cyrillic,latin-ext" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext" rel="stylesheet">
        <!-- //online-fonts -->
    </head>
    <body background="nurse.jpg">
        <!-- banner -->
        <%
            Connection con = DbConnection.getConn();
            Statement st = con.createStatement();
            String id = "";
            String name = "";
            String gender = "";
            String mobile = "";

            String address = "";
            String query = "select * from student";
            ResultSet rs = st.executeQuery(query);

        %>
        <div class="main_section_agile" id="home">
            <div class="agileits_w3layouts_banner_nav">
                <nav class="navbar navbar-default">
                    <div class="navbar-header navbar-left">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <h1><a class="navbar-brand" href="index.html"><i class="fa fa-laptop" aria-hidden="true"></i></a></h1>

                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse navbar-right">
                        <nav class="navbar navbar-inverse link-effect-2" id="link-effect-2">
                            <div class="container-fluid">
                                <ul class="nav navbar-nav">
                                    <li><a href="admin_page.jsp" >Home</a></li>  

                                    <li class="dropdown">
                                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Nurse
                                            <span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="AddNurse.jsp" >Add Nurse</a></li>
                                            <li><a href="DeleteStudent.jsp" >Delete Nurse</a></li>
                                        </ul>
                                    </li> 


                                    <li class="dropdown">
                                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Cot
                                            <span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="AddCot.jsp" >Add Cot</a></li>
                                            <li><a href="UpdateCot.jsp" >Update Cot</a></li>
                                        </ul>
                                    </li>


                                    <li class="dropdown">
                                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Patient Room
                                            <span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="AddPc.jsp" >Add Room</a></li>
                                            <li><a href="DeletePc.jsp" >Delete Room</a></li>

                                        </ul>

                                    </li>




                                    <li class="dropdown">
                                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Status
                                            <span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="status.jsp" >View Status</a></li>

                                        </ul>
                                    </li>

                                    <li class="dropdown">
                                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Log_Out
                                            <span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="index.html" >Log-Out</a></li>

                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </nav> 
                    </div>
                </nav>	
                <div class="clearfix"> </div> 
            </div>
        </div>
        <div id="mail" class="contact">
            <div class="container">
                <div class="w3l-form">
                    <h1 class="w3l-title"><center> DELETE NURSE DETAILS </center> </h1>
                    <div class="contact-top1">
                        <table class="table table-striped">
                            <tr>
                                <th> User Id </th>
                                <th> Name </th>
                                <th> Gender </th>

                                <th> Mobile No </th>
                                <th> Address </th>
                                <th> Delete </th>
                            </tr>
                            <%while (rs.next()) {
                                    id = rs.getString("Sr_no");
                                    name = rs.getString("name");
                                    gender = rs.getString("gender");
                                    mobile = rs.getString("mobileno");
                                    address = rs.getString("address");
                            %>
                            <tr>
                                <td><%=id%></td>
                                <td><%=name%></td>
                                <td><%=gender%></td>

                                <td><%=mobile%></td>
                                <td><%=address%></td>
                                <td><a href="deleteNurse.jsp?<%=id%>"> Delete </a></td>
                                <%}%>
                            </tr>                       
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix"> </div>           
        <!-- footer -->
        <div class="w3layouts_copy_right">
            <div class="container">
                <p>� 2018 Scholarly. All rights reserved | Design by <a href="http://dypic.in"> Dr.D.Y.Patil School Of Engineering And Technology.</a></p>
            </div>
        </div>
        <!-- //footer -->

        <!-- js-scripts -->			
        <!-- js-files -->
        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script> <!-- Necessary-JavaScript-File-For-Bootstrap --> 
        <!-- //js-files -->
        <!-- Baneer-js -->

        <!-- Map-JavaScript -->
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>        
        <script type="text/javascript">
            google.maps.event.addDomListener(window, 'load', init);
            function init() {
                var mapOptions = {
                    zoom: 11,
                    center: new google.maps.LatLng(40.6700, -73.9400),
                    styles: [{"featureType": "all", "elementType": "labels.text.fill", "stylers": [{"saturation": 36}, {"color": "#000000"}, {"lightness": 40}]}, {"featureType": "all", "elementType": "labels.text.stroke", "stylers": [{"visibility": "on"}, {"color": "#000000"}, {"lightness": 16}]}, {"featureType": "all", "elementType": "labels.icon", "stylers": [{"visibility": "off"}]}, {"featureType": "administrative", "elementType": "geometry.fill", "stylers": [{"color": "#000000"}, {"lightness": 20}]}, {"featureType": "administrative", "elementType": "geometry.stroke", "stylers": [{"color": "#000000"}, {"lightness": 17}, {"weight": 1.2}]}, {"featureType": "landscape", "elementType": "geometry", "stylers": [{"color": "#000000"}, {"lightness": 20}]}, {"featureType": "poi", "elementType": "geometry", "stylers": [{"color": "#000000"}, {"lightness": 21}]}, {"featureType": "road.highway", "elementType": "geometry.fill", "stylers": [{"color": "#000000"}, {"lightness": 17}]}, {"featureType": "road.highway", "elementType": "geometry.stroke", "stylers": [{"color": "#000000"}, {"lightness": 29}, {"weight": 0.2}]}, {"featureType": "road.arterial", "elementType": "geometry", "stylers": [{"color": "#000000"}, {"lightness": 18}]}, {"featureType": "road.local", "elementType": "geometry", "stylers": [{"color": "#000000"}, {"lightness": 16}]}, {"featureType": "transit", "elementType": "geometry", "stylers": [{"color": "#000000"}, {"lightness": 19}]}, {"featureType": "water", "elementType": "geometry", "stylers": [{"color": "#000000"}, {"lightness": 17}]}]
                };
                var mapElement = document.getElementById('map');
                var map = new google.maps.Map(mapElement, mapOptions);
                var marker = new google.maps.Marker({
                    position: new google.maps.LatLng(40.6700, -73.9400),
                    map: map,
                });
            }
        </script>
        <!-- //Map-JavaScript -->

        <!-- smooth scrolling -->
        <script src="js/SmoothScroll.min.js"></script>
        <!-- //smooth scrolling -->
        <!-- stats -->
        <script type="text/javascript" src="js/numscroller-1.0.js"></script>
        <!-- //stats -->
        <!-- moving-top scrolling -->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <script type="text/javascript">
            $(document).ready(function () {
                /*
                 var defaults = {
                 containerID: 'toTop', // fading element id
                 containerHoverID: 'toTopHover', // fading element hover id
                 scrollSpeed: 1200,
                 easingType: 'linear' 
                 };
                 */
                $().UItoTop({easingType: 'easeOutQuart'});
            });
        </script>
        <a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
        <!-- //moving-top scrolling -->
        <!-- gallery popup -->
        <script src="js/jquery.swipebox.min.js"></script> 
        <script type="text/javascript">
            jQuery(function ($) {
                $(".swipebox").swipebox();
            });
        </script>
        <!-- //gallery popup -->
        <!--/script-->
        <script src="js/simplePlayer.js"></script>
        <script>
            $("document").ready(function () {
                $("#video").simplePlayer();
            });
        </script>
        <!-- //Baneer-js -->
        <!-- Calendar -->
        <script src="js/jquery-ui.js"></script>
        <script>
            $(function () {
                $("#datepicker").datepicker();
            });
        </script>
        <!-- //Calendar -->	

        <!-- //js-scripts -->
    </body>
</html>