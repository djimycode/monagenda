<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
    <head>
        <title>Mon Agenda</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="description" content="Mon Agenda" />
        <meta name="keywords" content="jquery, circular menu, navigation, round, bubble"/>
        <link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>
        <style>
            *{
                margin:0;
                padding:0;
            }
            body{
                font-family:Arial;
                background:#fff url(images/bg.png) no-repeat top left;
                background-size: cover;
            }
            .title{
                width:548px;
                height:119px;
                position:absolute;
                top:400px;
                left:150px;
                background:transparent url(title.png) no-repeat top left;
            }
            a.back{
                background:transparent url(back.png) no-repeat top left;
                position:fixed;
                width:150px;
                height:27px;
                outline:none;
                bottom:0px;
                left:0px;
            }
            #content{
                margin:0 auto;
            }


        </style>
    </head>

    <body>
        <div id="content">
            <a class="back" href="http://tympanus.net/codrops/2010/04/29/awesome-bubble-navigation-with-jquery"></a>
            <div class="title"></div>

            <div class="navigation" id="nav">
                <div class="item user">
                    <img src="images/bg_user.png" alt="" width="199" height="199" class="circle"/>
                    <a href="#" class="icon"></a>
                    <h2>User</h2>
                    <ul>
                        <li><a href="../login.jsp">LOG IN</a></li>
                        <li><a href="/Formulaire/formulaire.jsp">SIGN UP</a></li>

                    </ul>
                </div>
                <div class="item home">
                    <img src="images/bg_home.png" alt="" width="199" height="199" class="circle"/>
                    <a href="../Bienvenue.jsp" class="icon"></a>
                    <h2>Home</h2>



                </div>
                <div class="item shop">
                    <img src="images/bg_shop.png" alt="" width="199" height="199" class="circle"/>
                    <a href="#" class="icon"></a>
                    <h2>ABOUT US</h2>
                    <ul>
                        <li><a href="#">GROUPE</a></li>
                        <li><a href="#">SERVICE</a></li>
                        <li><a href="#">CONTACT</a></li>
                    </ul>
                </div>


        </div>
        <!-- The JavaScript -->
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
        <script type="text/javascript" src="jquery.easing.1.3.js"></script>
        <script type="text/javascript">
            $(function() {
                $('#nav > div').hover(
                function () {
                    var $this = $(this);
                    $this.find('img').stop().animate({
                        'width'     :'199px',
                        'height'    :'199px',
                        'top'       :'-25px',
                        'left'      :'-25px',
                        'opacity'   :'1.0'
                    },500,'easeOutBack',function(){
                        $(this).parent().find('ul').fadeIn(700);
                    });

                    $this.find('a:first,h2').addClass('active');
                },
                function () {
                    var $this = $(this);
                    $this.find('ul').fadeOut(500);
                    $this.find('img').stop().animate({
                        'width'     :'52px',
                        'height'    :'52px',
                        'top'       :'0px',
                        'left'      :'0px',
                        'opacity'   :'0.1'
                    },5000,'easeOutBack');

                    $this.find('a:first,h2').removeClass('active');
                }
            );
            });
        </script>
        </div>
    </body>
</html>
