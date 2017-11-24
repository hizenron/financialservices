SET NAMES UTF8;
DROP DATABASE IF EXISTS fin_manage;
CREATE DATABASE fin_manage CHARSET=UTF8;
USE fin_manage;

/**用户信息**/
CREATE TABLE fm_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),
  avatar VARCHAR(128),        #头像图片路径
  user_name VARCHAR(32),      #用户名，如王小明
  gender INT                  #性别  0-女  1-男
);
INSERT INTO fm_user VALUES
(NULL, 'dingding', '123456', 'ding@qq.com', '13501234567', 'img/avatar/default.png', '丁伟', '1'),
(NULL, 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '林当', '1'),
(NULL, 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', '1'),
(NULL, 'yaya', '123456', 'ya@qq.com', '13501234260', 'img/avatar/default.png', '秦小雅', '0');


/**产品信息**/
CREATE TABLE fm_production(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  family_title VARCHAR(32),             #保险产品类别
  pro_name VARCHAR(32),                 #保险产品名称
  pro_title VARCHAR(32),                #保险产品主标题
  pro_subtitle VARCHAR(32),             #保险产品副标题
  interest_name VARCHAR(32),            #保险产品利率名称
  interest_rate VARCHAR(8),             #保险产品利率
  min_amount INT,                       #保险产品最小起投金额
  recommended BOOLEAN,                  #是否推荐产品
  isdel BOOLEAN                         #是否下架或者删除

);
/**产品信息插入数据**/
INSERT INTO fm_production VALUES
(1,"webloan","凤盈计划","凤盈计划-201709-0529","新人专享","预期年化利率","12.0",1000,1,0),
(2,"insurance","一次理财 终身收益","一次理财 终身收益","买就送京东卡","每月领取收益","27~41",450,1,0),
(3,"insurance","享4%加息补贴 灵活存取","享4%加息补贴 灵活存取","现金宝","7日年化收益率","3.91",100,1,0),
(4,"overseas","美元资产 高额回报","美元资产 高额回报","消费信贷爆款产品","约定年化收益率","8.0",30000,1,0);
