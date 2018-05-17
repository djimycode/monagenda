<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="login.css">
    <script src="js/modernizr.custom.63321.js"></script>
</head>



<body>
     <div class="container">
         <img src="user.png">
         <form action="/confirmer" method="post">

              <p>   Nom:<input  type="text" name="nom" width="30"/></p>
               <p>   Prénom:<input  type="text" name="prenom" width="30"/></p>

               <p>   Pseudo:<input  type="text" name="pseudo" width="30"/></p>
                <p>   Mail:<input  type="text" name="mail" width="30"/></p>

                 <p>   Password:  <input  type="password" name="password" width="10"/> </p>
                 <p>   Confirm_password:  <input  type="password" name="confirm_password" width="10"/> </p>
                     <%
                        if (request.getParameter("password") != request.getParameter("confirm_password")){

                            System.out.println("error: differents passwords");
                        }

                      %>
      <input   type="submit"  value="confirmer"   />

         </form>
  
      </div>
      </div>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></scr
    ipt>
		<script type="text/javascript" src="js/jquery.calendario.js"></script>
		<script type="text/javascript" src="js/data.js"></script>
		<script type="text/javascript">
			$(function() {

				var cal = $( '#calendar' ).calendario( {
						onDayClick : function( $el, $contentEl, dateProperties ) {

							for( var key in dateProperties ) {
								console.log( key + ' = ' + dateProperties[ key ] );
							}

						},
						caldata : codropsEvents
					} ),
					$month = $( '#custom-month' ).html( cal.getMonthName() ),
					$year = $( '#custom-year' ).html( cal.getYear() );

				$( '#custom-next' ).on( 'click', function() {
					cal.gotoNextMonth( updateMonthYear );
				} );
				$( '#custom-prev' ).on( 'click', function() {
					cal.gotoPreviousMonth( updateMonthYear );
				} );
				$( '#custom-current' ).on( 'click', function() {
					cal.gotoNow( updateMonthYear );
				} );

				function updateMonthYear() {
					$month.html( cal.getMonthName() );
					$year.html( cal.getYear() );
				}

				// you can also add more data later on. As an example:
				/*
				someElement.on( 'click', function() {

					cal.setData( {
						'03-01-2013' : '<a href="#">testing</a>',
						'03-10-2013' : '<a href="#">testing</a>',
						'03-12-2013' : '<a href="#">testing</a>'
					} );
					// goes to a specific month/year
					cal.goto( 3, 2013, updateMonthYear );

				} );
				*/

			});
		</script>

</body>
</html>
