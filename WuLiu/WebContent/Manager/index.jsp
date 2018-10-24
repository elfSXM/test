<%@ page contentType="text/html; charset=gb2312" %>
<html>
<head>
<title>
login
</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../CSS/style.css" type="text/css" rel="stylesheet">

<link href="../CSS/slideshow.css" rel="stylesheet" />
<script src="../js/slideshow.js" type="text/javascript"></script>

</head>
<jsp:include page="mtop.jsp"/>
<Script language="javascript">
</Script>

<body>
    <div class="comiis_wrapad" id="slideContainer">
        <div id="frameHlicAe" class="frame cl">
            <div class="temp"></div>
            <div class="block">
                <div class="cl">
                    <ul class="slideshow" id="slidesImgs">
                        <li>
                            <img src="../image/1.jpg" width="1000" height="500" alt="" /><span class="title">东方物流欢迎您！</span></li>
                        <li>
                            <img src="../image/2.jpg" width="1000" height="500" alt="" /><span class="title">东方物流欢迎您！</span></li>
                        <li>
                            <img src="../image/3.jpg" width="1000" height="500" alt="" /><span class="title">东方物流欢迎您！</span></li>
                        <li>
                            <img src="../image/4.jpg" width="1000" height="500" alt="" /><span class="title">东方物流欢迎您！</span></li>
                        <li>
                            <img src="../image/5.jpg" width="1000" height="500" alt="" /><span class="title">东方物流欢迎您！</span></li>
                        <li>
                            <img src="../image/6.jpg" width="1000" height="500" alt="" /><span class="title">东方物流欢迎您！</span></li>
    
                    </ul>
                </div>
                <div class="slidebar" id="slideBar">
                    <ul>
                        <li class="on">1</li>
                        <li>2</li>
                        <li>3</li>
                        <li>4</li>
                        <li>5</li>
                        <li>6</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        SlideShow(1000);
    </script>
    <br><br>
</body>
</html>
