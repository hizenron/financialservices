<?php
  //1:修改响应头的格式json
  header("Content-Type:application/json;charset=utf-8");
  //2:创建数据库连接
  //$conn = mysqli_connect("127.0.0.1","root","","fin_manage",3306);
  //$conn = mysqli_connect(SAE_MYSQL_HOST_M,SAE_MYSQL_USER,SAE_MYSQL_PASS,SAE_MYSQL_DB,SAE_MYSQL_PORT);
  $conn = mysqli_connect("w.rdc.sae.sina.com.cn","y1jxnm0144","j1xxilklwkxxzhzkwjyk3mlwkx1yzjhl3jhlm11l","app_finservice",3307);
  //$conn = mysql_connect(SAE_MYSQL_HOST_M.':'.SAE_MYSQL_PORT,SAE_MYSQL_USER,SAE_MYSQL_PASS);
  //3:设置编码
  mysqli_query($conn,"SET NAMES UTF8");
?>