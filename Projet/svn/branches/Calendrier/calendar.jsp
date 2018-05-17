
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--[if IE 9]><html class="no-js ie9"><![endif]-->
<!--[if gt IE 9]><!--><html class="no-js"><!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Date 4 U</title>
    <meta name="description" content="Flexible Calendar with jQuery and CSS3"/>
    <meta name="keywords"
          content="responsive, calendar, jquery, plugin, full page, flexible, javascript, css3, media queries"/>
    <meta name="author" content="Codrops"/>
    <link rel="shortcut icon" href="../favicon.ico">
    <link rel="stylesheet" type="text/css" href="css/calendar.css"/>
    <link rel="stylesheet" type="text/css" href="css/custom_1.css"/>
    <link rel="stylesheet" type="text/css" href="css/showmetheday.css"/>
    <script src="js/modernizr.custom.63321.js"></script>
    <script src="js/poopup.js"></script>
</head>
<body>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.calendario.js"></script>
<script type="text/javascript" src="js/data.js"></script>
<p class="user"><b> Bienvenue dans votre agenda ${username}</b></p>
<div class="container">
    <div class="custom-calendar-wrap custom-calendar-full">
        <div class="custom-header clearfix">
            <h2>DATE 4 U </h2>
            <button id="Event" type="button" onclick="window.open('popup.jsp');" formtarget="_parents">Ajouter un évènement</button>
            <h3 class="custom-month-year">
                <span id="custom-month" class="custom-month"></span>
                <span id="custom-year" class="custom-year"></span>
                <nav>
                    <span id="custom-prev" class="custom-prev"></span>
                    <span id="custom-next" class="custom-next"></span>
                    <span id="custom-current" class="custom-current" title="Got to current date"></span>
                </nav>
            </h3>
        </div>
        <div id="calendar" onclick="window.open('popup.jsp');" formtarget="_blank" class="fc-calendar-container" ></div>
    </div>
</div><!-- /container -->
<script type="text/javascript">
    $(function () {

        var cal = $('#calendar').calendario({
                onDayClick: function ($el, $contentEl, dateProperties) {

                    for (var key in dateProperties) {
                        console.log(key + ' = ' + dateProperties[key]);
                    }

                },
                caldata: codropsEvents
            }),
            $month = $('#custom-month').html(cal.getMonthName()),
            $year = $('#custom-year').html(cal.getYear());

        $('#custom-next').on('click', function () {
            cal.gotoNextMonth(updateMonthYear);
        });
        $('#custom-prev').on('click', function () {
            cal.gotoPreviousMonth(updateMonthYear);
        });
        $('#custom-current').on('click', function () {
            cal.gotoNow(updateMonthYear);
        });

        function updateMonthYear() {
            $month.html(cal.getMonthName());
            $year.html(cal.getYear());
        }

        // you can also add more data later on. As an example:

        someElement.on( 'click', function() {

            cal.setData( {
                '03-01-2013' : '<a href="#">testing</a>',
                '03-10-2013' : '<a href="#">testing</a>',
                '03-12-2013' : '<a href="#">testing</a>'
            } );
            // goes to a specific month/year
            cal.goto( 3, 2013, updateMonthYear );

        } );

    });
</script>
</body>
</html>