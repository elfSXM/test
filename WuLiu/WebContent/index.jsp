<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset='gb2312'">
<link rel="stylesheet" href="CSS/style.css">

<link href="CSS/slideshow.css" rel="stylesheet" />


<script src="js/slideshow.js" type="text/javascript"></script>

<title>����������������</title>
</head>
	<link rel="stylesheet" type="text/css" href="CSS/demo.css">
	<link rel="stylesheet" type="text/css" href="CSS/iziModal.css">
<jsp:include page="top.jsp"/>
<body>
<br><br>
    <div class="comiis_wrapad" id="slideContainer">
        <div id="frameHlicAe" class="frame cl">
            <div class="temp"></div>
            <div class="block">
                <div class="cl">
               
                    <ul class="slideshow" id="slidesImgs">
                        <li><a href="#" class="trigger-large">
                            <img src="image/1.jpg" width="1000" height="500" alt="" /></a><span class="title">����������ӭ����</span></li>
                        <li><a href="#" class="trigger-large">
                            <img src="image/2.jpg" width="1000" height="500" alt="" /></a><span class="title">����������ӭ����</span></li>
                        <li><a href="#" class="trigger-large">
                            <img src="image/3.jpg" width="1000" height="500" alt="" /></a><span class="title">����������ӭ����</span></li>
                        <li><a href="#" class="trigger-large">
                            <img src="image/4.jpg" width="1000" height="500" alt="" /></a><span class="title">����������ӭ����</span></li>
                        <li><a href="#" class="trigger-large">
                            <img src="image/5.jpg" width="1000" height="500" alt="" /></a><span class="title">����������ӭ����</span></li>
                        <li><a href="#" class="trigger-large">
                            <img src="image/6.jpg" width="1000" height="500" alt="" /></a><span class="title">����������ӭ����</span></li>
    
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
    

 <jsp:include page="down.jsp" flush="true" />   
</body>


        <div id="modal-large" class="iziModal">
        <p>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����������Ϣ�Ƽ����޹�˾��ʼ��2012�꣬����AAAA��������˾����֣��Ϊ���ģ�������ԭ������ȫ����Ʒ�ʵ�һ�����ķ���ӵ�д���С�͸��ֳ�����ҵ�������У��������䣬�㵣ר�ߣ����ҵ�񣬺������䣬רҵΪ�ͻ��ṩ�����䣬�ִ������ͣ�Ϊһ����ۺ�������������Կͻ������ṩ��ȫ��װ����ֵҵ�񣡾���ʮ����ķ�չ��Ŀǰ���γ���֣��Ϊ��Ŧ����ȫ��Ϊ�����棬�Ժ���ʡΪ�ص���ۺ��������������磬�ѳ�Ϊ����ʡ����һ������������ȫ��20���ʡ����������ֱϽ�У�����ֱ������300��ҡ�ȫ������������ä������ȫ��ӵ����ʮ��ͻ����������䳵��3000��̨��������Ա�����ˣ���ְ��ר����������ǧ����ӵ��ҵ�ڶ�������ƽ̨�����������200������A��B��C������ר��ͬʱ�Է�����˾ʼ���Կͻ�Ϊ�� ����ʱ�������������£�ʼ�ռ���Խ�Ӫҵ���㡢�Թ����ڳ������������·���Ż������ɱ���Ϊ�ͻ��ṩ���ٸ�Ч����ݼ�ʱ����ȫ�ɿ��ķ������飬�����ͻ��������ļ�ֵ��
        <br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��˾���С��������Ρ������ɹ����ķ���������������ȡ��ע��Ʒ�ʵ�̬�ȣ�ǿ���˲�ս�ԣ�ͨ�����ϵļ������º���Ϣ��ϵͳ�Ĵ��������������ͱ�׼����ϵ���������Ż�������ģʽ��Ϊ���ͻ��ṩ��ȫ�����١�רҵ���������������һֱ��������˾����������Ա����ͬ��չ�ͳɳ�����������˫Ӯ�����ƶ����÷�չ��������ҵˮƽ��ͬʱ��Ŭ�������������Ч�棬 Ϊ���񾭼õĳ�����չ����г���Ĵ��������������ף�Ŭ����˳֮�������Ϊ�й�����ѡ�Ĺ���������Ӫ�̡�
         <br>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ϊ�ͻ��ṩȫ��λ��һ�廯רҵ�����Ա�׼���Ĺ���ϵͳ�������������������ʵķ���Ϊ�ͻ������ֵ���ڳɾͿͻ���ͬʱ��������ļ�ֵ���ڴ������ĺ�����
        </p>
        <hr>
        <p> 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Dong Fang information technology company, the national AAAA level logistics, with zhengzhou as the center, based on the central plains, radiation throughout the country, quality first, service attentively, have big small and medium-sized vehicles, business types are: vehicle transportation, LCL lines, express delivery business, air transport, professional to provide transportation, warehousing, distribution, for an integrated logistics services. Provide safe packaging and other value-added services for customers. After more than ten years of development, has now formed in zhengzhou for hub, with national coverage, with an emphasis on henan integrated logistics network, logistics has become a henan native level, in the country has more than 20 provinces, autonomous regions and municipalities directly under the central government, set up more than 300 directly under the branch. No blind area cities and counties throughout the country, with hundreds of thousands of customers across the country, the existing more than 3000 vehicles of transport, the staff nearly ten thousand people, in college, thousands of undergraduates, with top industry network platform, can satisfy the domestic more than 200, A, B, C level city special line to send at the same time, the company has always been ready to customer-centric, continuous innovation, and always adhere to the self-built outlets, purchasing imported vehicles, structures, the optimal route, the optimal capacity cost, to provide fast and efficient, convenient, safe and reliable service experience in time, help customers to create the biggest value.
    <br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bearing trust, power companies adhering to the "successful" service concept, to maintain forge ahead, pay attention to the attitude of quality, strengthen the talent strategy, through constant technological innovation and the construction of the informatization system, improve the transport network and standardization system, create the optimization mode of delivery, for the general customers to provide safe, rapid, professional and satisfactory logistics services. All the time, the company is committed to working with employees to develop and grow, to create a win-win situation. In promoting the economic development, enhance the level of industry at the same time, efforts to create more social benefits, for the sustainable development of national economy, the creation of a harmonious society to make a positive contribution, efforts to forge a Chinese will arrange flight of choice for domestic logistics operators.
     <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Provide customers with all-round and integrated professional services. With standardized management and system operation, we are committed to creating value for customers with high quality service and improving our own value while achieving customers. Looking forward to cooperating with you.
        </p>
    </div>
	
	<script src="http://www.jq22.com/jquery/1.11.1/jquery.min.js"></script>
	<script src="js/iziModal.min.js" type="text/javascript"></script>
	<script type="text/javascript">
	    $("#modal-default").iziModal({
	        title: "Welcome to the iziModal",
	        subtitle: "��ӭ��������������",
	        iconClass: 'icon-announcement',
	        width: 700,
	        padding: 20
	    });



	    $("#modal-large").iziModal({
	        title: "��˾���",
	        subtitle: "��ӭ��������������",
	        iconClass: 'icon-chat',
	        overlayColor: 'rgba(255, 255, 255, 0.4)',
	        headerColor: '#334c7b',
	        iconColor: '#00ffba',
	        width: 700,
	        padding: 20
	    });
	    $(document).on('click', '.trigger-large', function (event) {
	        event.preventDefault();
	        $('#modal-large').iziModal('open');
	    });



	    $(document).on('opening', '#modal-iframe', function (e) {
	        //console.dir(e);
	    });
	    $(document).on('opened', '#modal-iframe', function (e) {
	        //console.dir(e);
	    });
	    $(document).on('closing', '#modal-iframe', function (e) {
	        //console.dir(e);
	    });
	    $(document).on('closed', '#modal-iframe', function (e) {
	        //console.dir(e);
	    });



	</script>
</html>
 