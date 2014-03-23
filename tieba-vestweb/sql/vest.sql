/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : vest

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2014-03-23 23:12:48
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `blog`
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `content` mediumtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='博客';

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('1', 'JFinal Demo Title here', 'JFinal Demo Content here');
INSERT INTO `blog` VALUES ('2', 'test 1', 'test 1');
INSERT INTO `blog` VALUES ('3', 'test 2', 'test 2');
INSERT INTO `blog` VALUES ('4', 'test 3', 'test 3');
INSERT INTO `blog` VALUES ('5', 'test 4', 'test 4');

-- ----------------------------
-- Table structure for `t_auditlog_history_2013`
-- ----------------------------
DROP TABLE IF EXISTS `t_auditlog_history_2013`;
CREATE TABLE `t_auditlog_history_2013` (
  `id` varchar(40) NOT NULL COMMENT 'ID',
  `operationType` varchar(50) DEFAULT NULL COMMENT '操作类型',
  `operatorName` varchar(50) DEFAULT NULL COMMENT '操作人姓名',
  `preValue` varchar(8000) DEFAULT NULL COMMENT '旧值',
  `curValue` varchar(8000) DEFAULT NULL COMMENT '新值',
  `operationTime` datetime DEFAULT NULL COMMENT '操作时间',
  `operationClass` varchar(500) DEFAULT NULL COMMENT '操作类',
  `operationClassID` varchar(50) DEFAULT NULL COMMENT '记录ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='操作记录';

-- ----------------------------
-- Records of t_auditlog_history_2013
-- ----------------------------

-- ----------------------------
-- Table structure for `t_auditlog_history_2014`
-- ----------------------------
DROP TABLE IF EXISTS `t_auditlog_history_2014`;
CREATE TABLE `t_auditlog_history_2014` (
  `id` varchar(40) NOT NULL COMMENT 'ID',
  `operationType` varchar(50) DEFAULT NULL COMMENT '操作类型',
  `operatorName` varchar(50) DEFAULT NULL COMMENT '操作人姓名',
  `preValue` varchar(8000) DEFAULT NULL COMMENT '旧值',
  `curValue` varchar(8000) DEFAULT NULL COMMENT '新值',
  `operationTime` datetime DEFAULT NULL COMMENT '操作时间',
  `operationClass` varchar(500) DEFAULT NULL COMMENT '操作类',
  `operationClassID` varchar(50) DEFAULT NULL COMMENT '记录ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='操作记录';

-- ----------------------------
-- Records of t_auditlog_history_2014
-- ----------------------------
INSERT INTO `t_auditlog_history_2014` VALUES ('0abe6e8d-dda9-49b7-a43c-59955ba46967', '保存', 'admin', '无', 'id[null],name[我的田俊],password[x230381871],bduss[lVOMHpBS3lMb2dRa2RMaW8xRVZkSkVkekZUSk41bDhYVEIxYjBtWVA0NmRpMVJUQVFBQUFBJCQAAAAAAAAAAAEAAADd0povztK1x],status[1],updateTime[Sun Mar 23 00:00:00 CST 2014],', '2014-03-23 23:08:26', 'com.tianjun.vest.entity.Vest', '1');
INSERT INTO `t_auditlog_history_2014` VALUES ('14aa1d21-6968-4e83-a887-9c94143f0bbd', '保存', 'admin', '无', 'id[b92e1ca1-b277-4a29-86c3-f470eb03d593],name[导出马甲],pid[adac3ab9-b677-4aa0-b39f-08762f30aaa1],description[],pageurl[/vest/list/export],0.普通资源1.菜单资源[0],state[是],', '2014-03-23 23:04:20', 'org.springrain.demo.entity.Menu', 'b92e1ca1-b277-4a29-86c3-f470eb03d593');
INSERT INTO `t_auditlog_history_2014` VALUES ('3e7249b6-85b7-4528-ab3c-33fd2bb89e49', '保存', 'admin', '无', 'id[f88ee4ad-ca8e-4102-89c4-926a53e8f6b9],name[批量删除],pid[adac3ab9-b677-4aa0-b39f-08762f30aaa1],description[],pageurl[/vest/delMulti],0.普通资源1.菜单资源[0],state[是],', '2014-03-23 23:04:02', 'org.springrain.demo.entity.Menu', 'f88ee4ad-ca8e-4102-89c4-926a53e8f6b9');
INSERT INTO `t_auditlog_history_2014` VALUES ('539a0a77-3959-42ba-ac98-f2fe4e2fb8bb', '保存', 'admin', '无', 'id[b08d9cde-9c00-41ac-a4e0-303542a88249],name[贴吧管理],pid[0],description[vote],pageurl[],0.普通资源1.菜单资源[1],state[是],', '2014-03-23 15:44:08', 'org.springrain.demo.entity.Menu', 'b08d9cde-9c00-41ac-a4e0-303542a88249');
INSERT INTO `t_auditlog_history_2014` VALUES ('793facf6-37f4-4ce0-a76c-771654c36578', '保存', 'admin', '无', 'id[adac3ab9-b677-4aa0-b39f-08762f30aaa1],name[马甲管理],pid[b08d9cde-9c00-41ac-a4e0-303542a88249],description[],pageurl[/vest/list],0.普通资源1.菜单资源[1],state[是],', '2014-03-23 22:53:16', 'org.springrain.demo.entity.Menu', 'adac3ab9-b677-4aa0-b39f-08762f30aaa1');
INSERT INTO `t_auditlog_history_2014` VALUES ('93247269-ed46-40f3-92e5-6ed6386a04d2', '保存', 'admin', '无', 'id[45e4e958-d58d-465b-ad73-46b64e7eeb4a],name[马甲管理],pid[business_manager],description[],pageurl[/vote/list],0.普通资源1.菜单资源[1],state[是],', '2014-03-23 15:47:01', 'org.springrain.demo.entity.Menu', '45e4e958-d58d-465b-ad73-46b64e7eeb4a');
INSERT INTO `t_auditlog_history_2014` VALUES ('e8561d18-5c55-4da0-8d7b-145a03fadf9c', '保存', 'admin', '无', 'id[933eb27c-0f2d-45fb-9806-457281fbe395],name[添加马甲],pid[adac3ab9-b677-4aa0-b39f-08762f30aaa1],description[],pageurl[/vest/update],0.普通资源1.菜单资源[0],state[是],', '2014-03-23 23:03:35', 'org.springrain.demo.entity.Menu', '933eb27c-0f2d-45fb-9806-457281fbe395');
INSERT INTO `t_auditlog_history_2014` VALUES ('f285b727-2543-4a6f-9971-df8d29bbac29', '更新', 'admin', 'id[b08d9cde-9c00-41ac-a4e0-303542a88249],name[贴吧管理],pid[0],description[vote],pageurl[],0.普通资源1.菜单资源[1],state[是],', 'id[b08d9cde-9c00-41ac-a4e0-303542a88249],name[贴吧管理],pid[0],description[vote],pageurl[],0.普通资源1.菜单资源[1],state[是],', '2014-03-23 15:45:56', 'org.springrain.demo.entity.Menu', 'b08d9cde-9c00-41ac-a4e0-303542a88249');

-- ----------------------------
-- Table structure for `t_auditlog_history_2015`
-- ----------------------------
DROP TABLE IF EXISTS `t_auditlog_history_2015`;
CREATE TABLE `t_auditlog_history_2015` (
  `id` varchar(40) NOT NULL COMMENT 'ID',
  `operationType` varchar(50) DEFAULT NULL COMMENT '操作类型',
  `operatorName` varchar(50) DEFAULT NULL COMMENT '操作人姓名',
  `preValue` varchar(8000) DEFAULT NULL COMMENT '旧值',
  `curValue` varchar(8000) DEFAULT NULL COMMENT '新值',
  `operationTime` datetime DEFAULT NULL COMMENT '操作时间',
  `operationClass` varchar(500) DEFAULT NULL COMMENT '操作类',
  `operationClassID` varchar(50) DEFAULT NULL COMMENT '记录ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='操作记录';

-- ----------------------------
-- Records of t_auditlog_history_2015
-- ----------------------------

-- ----------------------------
-- Table structure for `t_dic_data`
-- ----------------------------
DROP TABLE IF EXISTS `t_dic_data`;
CREATE TABLE `t_dic_data` (
  `id` varchar(40) NOT NULL,
  `name` varchar(60) NOT NULL COMMENT '名称',
  `code` varchar(60) DEFAULT NULL COMMENT '编码',
  `description` varchar(2000) DEFAULT NULL COMMENT '描述',
  `state` varchar(2) DEFAULT '是' COMMENT '是否有效',
  `typekey` varchar(20) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公共字典';

-- ----------------------------
-- Records of t_dic_data
-- ----------------------------
INSERT INTO `t_dic_data` VALUES ('16b80bfb-f0ee-47a0-ba94-cc256abaed17', '专科', '', '', '是', 'xueli');
INSERT INTO `t_dic_data` VALUES ('7ed23330-5538-4943-8678-0c5a2121cf57', '高中', '', '', '是', 'xueli');
INSERT INTO `t_dic_data` VALUES ('936db407-ae1-45a7-a657-b60580e2a77a', '汉族', '', '', '是', 'minzu');
INSERT INTO `t_dic_data` VALUES ('936db407-ae2-45a7-a657-b60580e2a77a', '回族', '', '', '是', 'minzu');
INSERT INTO `t_dic_data` VALUES ('936db407-ae3-45a7-a657-b60580e2a77a', '一级', '', '', '是', 'grade');
INSERT INTO `t_dic_data` VALUES ('936db407-ae4-45a7-a657-b60580e2a77a', '二级', '', '', '是', 'grade');
INSERT INTO `t_dic_data` VALUES ('d7d1744b-e69f-48d0-9760-b2eae6af039b', '本科', '', '', '是', 'xueli');

-- ----------------------------
-- Table structure for `t_fwlog_history_2013`
-- ----------------------------
DROP TABLE IF EXISTS `t_fwlog_history_2013`;
CREATE TABLE `t_fwlog_history_2013` (
  `id` varchar(100) NOT NULL COMMENT 'ID',
  `startDate` datetime DEFAULT NULL COMMENT '访问时间',
  `strDate` varchar(100) DEFAULT NULL COMMENT '访问时间(毫秒)',
  `tomcat` varchar(50) DEFAULT NULL COMMENT 'Tomcat',
  `userCode` varchar(300) DEFAULT NULL COMMENT '登陆账号',
  `userName` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sessionId` varchar(300) DEFAULT NULL COMMENT 'sessionId',
  `ip` varchar(200) DEFAULT NULL COMMENT 'IP',
  `fwUrl` varchar(3000) DEFAULT NULL COMMENT '访问菜单',
  `menuName` varchar(100) DEFAULT NULL COMMENT '菜单名称',
  `isqx` varchar(2) DEFAULT NULL COMMENT '是否有权限访问',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='访问日志';

-- ----------------------------
-- Records of t_fwlog_history_2013
-- ----------------------------

-- ----------------------------
-- Table structure for `t_fwlog_history_2014`
-- ----------------------------
DROP TABLE IF EXISTS `t_fwlog_history_2014`;
CREATE TABLE `t_fwlog_history_2014` (
  `id` varchar(100) NOT NULL COMMENT 'ID',
  `startDate` datetime DEFAULT NULL COMMENT '访问时间',
  `strDate` varchar(100) DEFAULT NULL COMMENT '访问时间(毫秒)',
  `tomcat` varchar(50) DEFAULT NULL COMMENT 'Tomcat',
  `userCode` varchar(300) DEFAULT NULL COMMENT '登陆账号',
  `userName` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sessionId` varchar(300) DEFAULT NULL COMMENT 'sessionId',
  `ip` varchar(200) DEFAULT NULL COMMENT 'IP',
  `fwUrl` varchar(3000) DEFAULT NULL COMMENT '访问菜单',
  `menuName` varchar(100) DEFAULT NULL COMMENT '菜单名称',
  `isqx` varchar(2) DEFAULT NULL COMMENT '是否有权限访问',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='访问日志';

-- ----------------------------
-- Records of t_fwlog_history_2014
-- ----------------------------
INSERT INTO `t_fwlog_history_2014` VALUES ('02ad110e-6f2f-4459-9971-2d083b62b53c', '2014-03-23 23:12:04', '2014-03-23 23:12:04.0074', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/role/list', '角色管理', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('06e27fab-ec04-4e7d-8da1-5c7e601c6a83', '2014-03-23 15:47:18', '2014-03-23 15:47:18.0309', null, 'admin', 'admin', '997be0be-f700-4a58-a681-89bd6d785a26', '0:0:0:0:0:0:0:1', 'http://localhost:8080/springrain/menu/list', '菜单管理', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('07811aaa-12a0-44bb-aa39-8beb7732d2c5', '2014-03-23 22:52:12', '2014-03-23 22:52:12.0909', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/limit/update', '修改权限', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('099ea033-ae10-410c-a530-ecc922787fb3', '2014-03-23 22:52:14', '2014-03-23 22:52:14.0693', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/limit/list', '权限分配', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('1551808b-f882-42fc-9b41-dab57d25cf93', '2014-03-23 23:03:35', '2014-03-23 23:03:35.0350', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/menu/update', '修改菜单', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('161bdb91-6694-4648-9ad4-25e1b09e6ba2', '2014-03-23 22:53:58', '2014-03-23 22:53:58.0423', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/limit/update', '修改权限', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('16ab5593-9621-4ac1-9c08-92f7d6eed93a', '2014-03-23 23:04:02', '2014-03-23 23:04:02.0413', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/menu/update', '修改菜单', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('17184393-2f67-4add-a12c-faad5ae4c12a', '2014-03-23 15:45:27', '2014-03-23 15:45:27.0606', null, 'admin', 'admin', '997be0be-f700-4a58-a681-89bd6d785a26', '0:0:0:0:0:0:0:1', 'http://localhost:8080/springrain/menu/list', '菜单管理', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('190d47ee-5bfd-4c26-9703-16abdf53d8bc', '2014-03-23 15:42:58', '2014-03-23 15:42:58.0107', null, 'admin', 'admin', 'fcbe4019-7244-421f-aa68-7db768d287b4', '0:0:0:0:0:0:0:1', 'http://localhost:8080/springrain/blog/list', '博客管理', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('1d8e9f2a-0232-4991-8d7b-bd92bba552ad', '2014-03-23 22:53:39', '2014-03-23 22:53:39.0528', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/limit/list', '权限分配', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('1fb5d26a-3ff7-4caf-a680-7f913b7d521d', '2014-03-23 23:04:03', '2014-03-23 23:04:03.0887', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/menu/list', '菜单管理', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('208b3716-d26b-47a6-93b2-bdf491913aa2', '2014-03-23 15:45:24', '2014-03-23 15:45:24.0115', null, 'admin', 'admin', '997be0be-f700-4a58-a681-89bd6d785a26', '0:0:0:0:0:0:0:1', 'http://localhost:8080/springrain/menu/list', '菜单管理', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('20aff418-891d-4971-9711-591e0f3c98f2', '2014-03-23 15:43:02', '2014-03-23 15:43:02.0055', null, 'admin', 'admin', 'fcbe4019-7244-421f-aa68-7db768d287b4', '0:0:0:0:0:0:0:1', 'http://localhost:8080/springrain/blog/list', '博客管理', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('2b3a8413-5080-45fd-9ee2-4aa20f31e9ea', '2014-03-23 15:46:02', '2014-03-23 15:46:02.0637', null, 'admin', 'admin', '997be0be-f700-4a58-a681-89bd6d785a26', '0:0:0:0:0:0:0:1', 'http://localhost:8080/springrain/menu/list', '菜单管理', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('2c93dd39-9874-48e2-8e45-ed82c202a27b', '2014-03-23 15:44:10', '2014-03-23 15:44:10.0588', null, 'admin', 'admin', 'fcbe4019-7244-421f-aa68-7db768d287b4', '0:0:0:0:0:0:0:1', 'http://localhost:8080/springrain/menu/list', '菜单管理', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('2d4cdac1-09e5-4b36-be0d-08365d33a84d', '2014-03-23 15:47:01', '2014-03-23 15:47:01.0258', null, 'admin', 'admin', '997be0be-f700-4a58-a681-89bd6d785a26', '0:0:0:0:0:0:0:1', 'http://localhost:8080/springrain/menu/update', '修改菜单', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('41af5e38-5938-46e9-899a-46e73f140828', '2014-03-23 22:51:50', '2014-03-23 22:51:50.0681', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/limit/list', '权限分配', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('43efa1da-6cd5-4a47-92d9-fedc4da75b12', '2014-03-23 23:00:50', '2014-03-23 23:00:50.0704', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/limit/update/pre', '修改权限', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('448d2e38-3207-4c5d-ac78-b4ea0236516a', '2014-03-23 15:44:34', '2014-03-23 15:44:34.0636', null, 'admin', 'admin', '997be0be-f700-4a58-a681-89bd6d785a26', '0:0:0:0:0:0:0:1', 'http://localhost:8080/springrain/menu/list', '菜单管理', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('4879c3f1-d532-4bfa-912d-e5c5e09b17cc', '2014-03-23 15:44:42', '2014-03-23 15:44:42.0203', null, 'admin', 'admin', '997be0be-f700-4a58-a681-89bd6d785a26', '0:0:0:0:0:0:0:1', 'http://localhost:8080/springrain/menu/list', '菜单管理', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('48fe8ab1-2286-437b-a1b0-4f554a6f5716', '2014-03-23 23:03:36', '2014-03-23 23:03:36.0921', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/menu/list', '菜单管理', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('4b1ba460-5fe6-4dae-a0c5-13466e38bfae', '2014-03-23 15:46:39', '2014-03-23 15:46:39.0535', null, 'admin', 'admin', '997be0be-f700-4a58-a681-89bd6d785a26', '0:0:0:0:0:0:0:1', 'http://localhost:8080/springrain/menu/update/pre', '修改菜单', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('51a41f26-36f9-4d5b-a111-e56ed56a66bb', '2014-03-23 23:05:52', '2014-03-23 23:05:52.0618', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/limit/update', '修改权限', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('541485a4-9221-4b58-8d02-57c61108ab3c', '2014-03-23 23:05:54', '2014-03-23 23:05:54.0147', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/limit/list', '权限分配', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('5d16b153-d81c-4d4c-9ded-8bf7956e6065', '2014-03-23 15:45:57', '2014-03-23 15:45:57.0633', null, 'admin', 'admin', '997be0be-f700-4a58-a681-89bd6d785a26', '0:0:0:0:0:0:0:1', 'http://localhost:8080/springrain/menu/list', '菜单管理', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('5ec5effa-d0a2-410d-abc8-da28f2081686', '2014-03-23 15:43:29', '2014-03-23 15:43:29.0618', null, 'admin', 'admin', 'fcbe4019-7244-421f-aa68-7db768d287b4', '0:0:0:0:0:0:0:1', 'http://localhost:8080/springrain/menu/list', '菜单管理', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('60f79522-38a7-4375-ad22-3f951f9409e5', '2014-03-23 22:53:16', '2014-03-23 22:53:16.0043', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/menu/update', '修改菜单', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('63a1193d-f2bd-49bd-acdd-f30a0358c1c7', '2014-03-23 15:44:52', '2014-03-23 15:44:52.0738', null, 'admin', 'admin', '997be0be-f700-4a58-a681-89bd6d785a26', '0:0:0:0:0:0:0:1', 'http://localhost:8080/springrain/menu/list', '菜单管理', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('65ed8642-e4bf-47d6-8796-d3a4f87ca673', '2014-03-23 22:53:33', '2014-03-23 22:53:33.0846', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/menu/list', '菜单管理', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('68090423-a88e-495a-8d60-2bc51ba555ec', '2014-03-23 23:01:01', '2014-03-23 23:01:01.0144', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/limit/update/pre', '修改权限', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('68dc6b46-73ad-4a53-82d3-34617394368d', '2014-03-23 15:46:10', '2014-03-23 15:46:10.0700', null, 'admin', 'admin', '997be0be-f700-4a58-a681-89bd6d785a26', '0:0:0:0:0:0:0:1', 'http://localhost:8080/springrain/menu/look', '查看菜单', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('6ceafa39-d222-450a-93c0-cbfd673c9f80', '2014-03-23 23:01:27', '2014-03-23 23:01:27.0034', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/menu/list', '菜单管理', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('6e3cf576-4c59-49f5-b208-51dcb2432bf8', '2014-03-23 22:53:22', '2014-03-23 22:53:22.0065', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/menu/list', '菜单管理', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('6e9ee8eb-eae6-4e05-9f47-2ea0911ccd6f', '2014-03-23 22:59:34', '2014-03-23 22:59:34.0332', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/limit/list', '权限分配', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('7605e980-a396-4669-a988-ee7293e41d14', '2014-03-23 23:03:39', '2014-03-23 23:03:39.0507', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/menu/update/pre', '修改菜单', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('7677cfc7-e620-4590-af87-26ce34167775', '2014-03-23 23:04:22', '2014-03-23 23:04:22.0208', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/menu/list', '菜单管理', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('7689aebf-fc48-4fc6-8e82-4c032fc485d9', '2014-03-23 23:05:44', '2014-03-23 23:05:44.0365', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/limit/list', '权限分配', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('7725137b-8d6e-426d-bccc-fac41e3e4d4c', '2014-03-23 15:44:07', '2014-03-23 15:44:07.0244', null, 'admin', 'admin', 'fcbe4019-7244-421f-aa68-7db768d287b4', '0:0:0:0:0:0:0:1', 'http://localhost:8080/springrain/menu/update', '修改菜单', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('7e861f7a-88cc-41b8-b9af-43abc8bc1e22', '2014-03-23 23:01:47', '2014-03-23 23:01:47.0238', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/menu/update/pre', '修改菜单', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('8017aec1-4cb6-4cfe-845f-d57ba0226ef5', '2014-03-23 15:44:45', '2014-03-23 15:44:45.0965', null, 'admin', 'admin', '997be0be-f700-4a58-a681-89bd6d785a26', '0:0:0:0:0:0:0:1', 'http://localhost:8080/springrain/menu/list', '菜单管理', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('80f29bf8-f855-4520-b376-5d8fe3a78844', '2014-03-23 22:52:24', '2014-03-23 22:52:24.0374', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/menu/list', '菜单管理', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('84323bb3-be24-45e7-8e7b-7d96604bbdf8', '2014-03-23 22:51:53', '2014-03-23 22:51:53.0342', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/limit/update/pre', '修改权限', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('8f3d5a5b-cbb2-4487-a940-b24a6a114fa5', '2014-03-23 15:45:47', '2014-03-23 15:45:47.0859', null, 'admin', 'admin', '997be0be-f700-4a58-a681-89bd6d785a26', '0:0:0:0:0:0:0:1', 'http://localhost:8080/springrain/menu/update/pre', '修改菜单', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('8f4715d3-e98f-4f96-a38b-4284528fdfba', '2014-03-23 15:47:03', '2014-03-23 15:47:03.0140', null, 'admin', 'admin', '997be0be-f700-4a58-a681-89bd6d785a26', '0:0:0:0:0:0:0:1', 'http://localhost:8080/springrain/menu/list', '菜单管理', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('94be75ca-e3c5-4d6d-a394-97ac4121fb49', '2014-03-23 23:05:45', '2014-03-23 23:05:45.0758', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/limit/update/pre', '修改权限', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('99b2fefb-bbaa-4782-b041-33cef2df9c6f', '2014-03-23 22:53:41', '2014-03-23 22:53:41.0052', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/limit/update/pre', '修改权限', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('a2f1be27-fdec-4b53-8a91-390bd8c1766d', '2014-03-23 22:53:17', '2014-03-23 22:53:17.0719', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/menu/list', '菜单管理', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('a4db8a4a-8c1a-4344-9933-3c14edb634e7', '2014-03-23 22:53:30', '2014-03-23 22:53:30.0471', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/menu/list', '菜单管理', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('a9afed75-090b-4eee-a805-89c5656c5f8a', '2014-03-23 15:43:26', '2014-03-23 15:43:26.0622', null, 'admin', 'admin', 'fcbe4019-7244-421f-aa68-7db768d287b4', '0:0:0:0:0:0:0:1', 'http://localhost:8080/springrain/fwlog/look', '查看访问日志', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('b2940435-f3bb-4d8e-8d5b-1e00d8b6dfde', '2014-03-23 15:43:15', '2014-03-23 15:43:15.0404', null, 'admin', 'admin', 'fcbe4019-7244-421f-aa68-7db768d287b4', '0:0:0:0:0:0:0:1', 'http://localhost:8080/springrain/limit/list', '权限分配', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('b68a3dbd-2690-487f-baff-63abb8c24e16', '2014-03-23 15:43:41', '2014-03-23 15:43:41.0970', null, 'admin', 'admin', 'fcbe4019-7244-421f-aa68-7db768d287b4', '0:0:0:0:0:0:0:1', 'http://localhost:8080/springrain/menu/update/pre', '修改菜单', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('b6c5e613-f322-4a5c-9f08-edf7814c63b0', '2014-03-23 22:53:59', '2014-03-23 22:53:59.0893', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/limit/list', '权限分配', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('b7e1ae3f-67e5-4c28-9788-ea73d5d062c6', '2014-03-23 22:59:36', '2014-03-23 22:59:36.0595', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/auditlog/list', '修改日志', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('ba6d6fd9-5f83-4074-9eb5-0f539bc70048', '2014-03-23 15:43:17', '2014-03-23 15:43:17.0240', null, 'admin', 'admin', 'fcbe4019-7244-421f-aa68-7db768d287b4', '0:0:0:0:0:0:0:1', 'http://localhost:8080/springrain/auditlog/list', '修改日志', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('c3479d39-85fe-4d5c-bfd4-1fbb01abc799', '2014-03-23 22:52:28', '2014-03-23 22:52:28.0984', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/menu/update/pre', '修改菜单', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('ddd7578f-6c94-49f4-9485-e2edbbd52d0d', '2014-03-23 15:45:56', '2014-03-23 15:45:56.0048', null, 'admin', 'admin', '997be0be-f700-4a58-a681-89bd6d785a26', '0:0:0:0:0:0:0:1', 'http://localhost:8080/springrain/menu/update', '修改菜单', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('e1e58191-b9ca-439d-ac0a-ba3c545c587f', '2014-03-23 23:04:06', '2014-03-23 23:04:06.0065', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/menu/update/pre', '修改菜单', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('e3b96579-49ba-440c-ae67-54fe0b45b578', '2014-03-23 15:44:26', '2014-03-23 15:44:26.0431', null, 'admin', 'admin', '997be0be-f700-4a58-a681-89bd6d785a26', '0:0:0:0:0:0:0:1', 'http://localhost:8080/springrain/menu/list', '菜单管理', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('e839516b-b5b0-446b-8601-a400b324d012', '2014-03-23 15:44:31', '2014-03-23 15:44:31.0066', null, 'admin', 'admin', '997be0be-f700-4a58-a681-89bd6d785a26', '0:0:0:0:0:0:0:1', 'http://localhost:8080/springrain/menu/list', '菜单管理', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('e8d14ee0-aa62-440b-a411-ec6bc804c6ee', '2014-03-23 15:43:03', '2014-03-23 15:43:03.0717', null, 'admin', 'admin', 'fcbe4019-7244-421f-aa68-7db768d287b4', '0:0:0:0:0:0:0:1', 'http://localhost:8080/springrain/blog/list', '博客管理', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('eac92d78-cd83-4d43-9dce-f6b1fc568774', '2014-03-23 15:59:45', '2014-03-23 15:59:45.0557', null, 'admin', 'admin', 'cd6db8fa-13b0-4bc9-8600-d4ed68d27725', '0:0:0:0:0:0:0:1', 'http://localhost:8080/springrain/blog/list', '博客管理', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('f4d07087-5214-47e3-8354-8692db317d34', '2014-03-23 15:46:15', '2014-03-23 15:46:15.0308', null, 'admin', 'admin', '997be0be-f700-4a58-a681-89bd6d785a26', '0:0:0:0:0:0:0:1', 'http://localhost:8080/springrain/menu/look', '查看菜单', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('f6819d41-89b6-4b82-af85-3eaede329197', '2014-03-23 15:44:47', '2014-03-23 15:44:47.0141', null, 'admin', 'admin', '997be0be-f700-4a58-a681-89bd6d785a26', '0:0:0:0:0:0:0:1', 'http://localhost:8080/springrain/menu/list', '菜单管理', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('f8696cb4-f718-44e1-9c37-3834b5816262', '2014-03-23 23:04:20', '2014-03-23 23:04:20.0846', null, 'admin', 'admin', 'ba5467a5-9c11-40eb-ac12-1ff713bde740', '0:0:0:0:0:0:0:1', 'http://localhost:8080/vest/menu/update', '修改菜单', '是');
INSERT INTO `t_fwlog_history_2014` VALUES ('fe832ab0-30f0-4747-83b5-86da680b1db3', '2014-03-23 15:43:18', '2014-03-23 15:43:18.0776', null, 'admin', 'admin', 'fcbe4019-7244-421f-aa68-7db768d287b4', '0:0:0:0:0:0:0:1', 'http://localhost:8080/springrain/fwlog/list', '访问日志', '是');

-- ----------------------------
-- Table structure for `t_fwlog_history_2015`
-- ----------------------------
DROP TABLE IF EXISTS `t_fwlog_history_2015`;
CREATE TABLE `t_fwlog_history_2015` (
  `id` varchar(100) NOT NULL COMMENT 'ID',
  `startDate` datetime DEFAULT NULL COMMENT '访问时间',
  `strDate` varchar(100) DEFAULT NULL COMMENT '访问时间(毫秒)',
  `tomcat` varchar(50) DEFAULT NULL COMMENT 'Tomcat',
  `userCode` varchar(300) DEFAULT NULL COMMENT '登陆账号',
  `userName` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sessionId` varchar(300) DEFAULT NULL COMMENT 'sessionId',
  `ip` varchar(200) DEFAULT NULL COMMENT 'IP',
  `fwUrl` varchar(3000) DEFAULT NULL COMMENT '访问菜单',
  `menuName` varchar(100) DEFAULT NULL COMMENT '菜单名称',
  `isqx` varchar(2) DEFAULT NULL COMMENT '是否有权限访问',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='访问日志';

-- ----------------------------
-- Records of t_fwlog_history_2015
-- ----------------------------

-- ----------------------------
-- Table structure for `t_menu`
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `id` varchar(40) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `pid` varchar(40) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL COMMENT '描述',
  `pageurl` varchar(3000) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '0.功能按钮,1.导航菜单',
  `state` varchar(2) DEFAULT '是' COMMENT '是否有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单';

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('45e4e958-d58d-465b-ad73-46b64e7eeb4a', '马甲管理', 'business_manager', '', '/vote/list', '1', '是');
INSERT INTO `t_menu` VALUES ('933eb27c-0f2d-45fb-9806-457281fbe395', '添加马甲', 'adac3ab9-b677-4aa0-b39f-08762f30aaa1', '', '/vest/update', '0', '是');
INSERT INTO `t_menu` VALUES ('adac3ab9-b677-4aa0-b39f-08762f30aaa1', '马甲管理', 'b08d9cde-9c00-41ac-a4e0-303542a88249', '', '/vest/list', '1', '是');
INSERT INTO `t_menu` VALUES ('b08d9cde-9c00-41ac-a4e0-303542a88249', '贴吧管理', '0', 'vote', '', '1', '是');
INSERT INTO `t_menu` VALUES ('b92e1ca1-b277-4a29-86c3-f470eb03d593', '导出马甲', 'adac3ab9-b677-4aa0-b39f-08762f30aaa1', '', '/vest/list/export', '0', '是');
INSERT INTO `t_menu` VALUES ('blog_delete', '删除博客', 'blog_list', null, '/blog/delete', '0', '是');
INSERT INTO `t_menu` VALUES ('blog_delMulti', '批量删除博客', 'blog_list', null, '/blog/delMulti', '0', '是');
INSERT INTO `t_menu` VALUES ('blog_export', '导出博客', 'blog_list', null, '/blog/list/export', '0', '是');
INSERT INTO `t_menu` VALUES ('blog_list', '博客管理', 'business_manager', null, '/blog/list', '1', '是');
INSERT INTO `t_menu` VALUES ('blog_look', '查看博客', 'blog_list', null, '/blog/look', '0', '是');
INSERT INTO `t_menu` VALUES ('blog_update', '修改博客', 'blog_list', null, '/blog/update', '0', '是');
INSERT INTO `t_menu` VALUES ('blog_upload', '导入博客', 'blog_list', null, '/blog/upload', '0', '是');
INSERT INTO `t_menu` VALUES ('business_manager', '业务管理', null, null, null, '1', '是');
INSERT INTO `t_menu` VALUES ('dic_manager', '字典管理', null, null, null, '1', '是');
INSERT INTO `t_menu` VALUES ('f88ee4ad-ca8e-4102-89c4-926a53e8f6b9', '批量删除', 'adac3ab9-b677-4aa0-b39f-08762f30aaa1', '', '/vest/delMulti', '0', '是');
INSERT INTO `t_menu` VALUES ('limtDistribute_list', '权限分配', 'system_manager', null, '/limit/list', '1', '是');
INSERT INTO `t_menu` VALUES ('limtDistribute_update', '修改权限', 'limtDistribute_list', null, '/limit/update', '0', '是');
INSERT INTO `t_menu` VALUES ('system_manager', '系统管理', null, null, null, '1', '是');
INSERT INTO `t_menu` VALUES ('t_auditlog_list', '修改日志', 'system_manager', null, '/auditlog/list', '1', '是');
INSERT INTO `t_menu` VALUES ('t_auditlog_look', '查看修改日志', 't_auditlog_list', null, '/auditlog/look', '0', '是');
INSERT INTO `t_menu` VALUES ('t_dic_data_grade_delete', '删除级别', 't_dic_data_grade_list', null, '/dicdata/grade/delete', '0', '是');
INSERT INTO `t_menu` VALUES ('t_dic_data_grade_delMulti', '批量删除级别', 't_dic_data_grade_list', null, '/dicdata/grade/delMulti', '0', '是');
INSERT INTO `t_menu` VALUES ('t_dic_data_grade_list', '级别管理', 'dic_manager', null, '/dicdata/grade/list', '1', '是');
INSERT INTO `t_menu` VALUES ('t_dic_data_grade_look', '查看级别', 't_dic_data_grade_list', null, '/dicdata/grade/look', '0', '是');
INSERT INTO `t_menu` VALUES ('t_dic_data_grade_update', '修改级别', 't_dic_data_grade_list', null, '/dicdata/grade/update', '0', '是');
INSERT INTO `t_menu` VALUES ('t_dic_data_minzu_delete', '删除民族', 't_dic_data_minzu_list', null, '/dicdata/minzu/delete', '0', '是');
INSERT INTO `t_menu` VALUES ('t_dic_data_minzu_delMulti', '批量删除民族', 't_dic_data_minzu_list', null, '/dicdata/minzu/delMulti', '0', '是');
INSERT INTO `t_menu` VALUES ('t_dic_data_minzu_list', '民族管理', 'dic_manager', null, '/dicdata/minzu/list', '1', '是');
INSERT INTO `t_menu` VALUES ('t_dic_data_minzu_look', '查看民族', 't_dic_data_minzu_list', null, '/dicdata/minzu/look', '0', '是');
INSERT INTO `t_menu` VALUES ('t_dic_data_minzu_update', '修改民族', 't_dic_data_minzu_list', null, '/dicdata/minzu/update', '0', '是');
INSERT INTO `t_menu` VALUES ('t_dic_data_xueli_delete', '删除学历', 't_dic_data_xueli_list', null, '/dicdata/xueli/delete', '0', '是');
INSERT INTO `t_menu` VALUES ('t_dic_data_xueli_delMulti', '批量删除学历', 't_dic_data_xueli_list', null, '/dicdata/xueli/delMulti', '0', '是');
INSERT INTO `t_menu` VALUES ('t_dic_data_xueli_list', '学历管理', 'dic_manager', null, '/dicdata/xueli/list', '1', '是');
INSERT INTO `t_menu` VALUES ('t_dic_data_xueli_look', '查看学历', 't_dic_data_xueli_list', null, '/dicdata/xueli/look', '0', '是');
INSERT INTO `t_menu` VALUES ('t_dic_data_xueli_update', '修改学历', 't_dic_data_xueli_list', null, '/dicdata/xueli/update', '0', '是');
INSERT INTO `t_menu` VALUES ('t_fwlog_list', '访问日志', 'system_manager', null, '/fwlog/list', '1', '是');
INSERT INTO `t_menu` VALUES ('t_fwlog_look', '查看访问日志', 't_fwlog_list', null, '/fwlog/look', '0', '是');
INSERT INTO `t_menu` VALUES ('t_menu_delete', '删除菜单', 't_menu_list', null, '/menu/delete', '0', '是');
INSERT INTO `t_menu` VALUES ('t_menu_delMulti', '批量删除菜单', 't_menu_list', null, '/menu/delMulti', '0', '是');
INSERT INTO `t_menu` VALUES ('t_menu_list', '菜单管理', 'system_manager', null, '/menu/list', '1', '是');
INSERT INTO `t_menu` VALUES ('t_menu_look', '查看菜单', 't_menu_list', null, '/menu/look', '0', '是');
INSERT INTO `t_menu` VALUES ('t_menu_update', '修改菜单', 't_menu_list', null, '/menu/update', '0', '是');
INSERT INTO `t_menu` VALUES ('t_org_delete', '删除部门', 't_org_list', null, '/org/delete', '0', '是');
INSERT INTO `t_menu` VALUES ('t_org_delMulti', '批量删除部门', 't_org_list', null, '/org/delMulti', '0', '是');
INSERT INTO `t_menu` VALUES ('t_org_list', '部门管理', 'business_manager', null, '/org/list', '1', '是');
INSERT INTO `t_menu` VALUES ('t_org_look', '查看部门', 't_org_list', null, '/org/look', '0', '是');
INSERT INTO `t_menu` VALUES ('t_org_update', '修改部门', 't_org_list', null, '/org/update', '0', '是');
INSERT INTO `t_menu` VALUES ('t_role_delete', '删除角色', 't_role_list', null, '/role/delete', '0', '是');
INSERT INTO `t_menu` VALUES ('t_role_delMulti', '批量删除角色', 't_role_list', null, '/role/delMulti', '0', '是');
INSERT INTO `t_menu` VALUES ('t_role_list', '角色管理', 'dic_manager', null, '/role/list', '1', '是');
INSERT INTO `t_menu` VALUES ('t_role_look', '查看角色', 't_role_list', null, '/role/look', '0', '是');
INSERT INTO `t_menu` VALUES ('t_role_update', '修改角色', 't_role_list', null, '/role/update', '0', '是');
INSERT INTO `t_menu` VALUES ('t_user_delete', '删除用户', 't_user_list', null, '/user/delete', '0', '是');
INSERT INTO `t_menu` VALUES ('t_user_delMulti', '批量删除用户', 't_user_list', null, '/user/delMulti', '0', '是');
INSERT INTO `t_menu` VALUES ('t_user_list', '用户管理', 'business_manager', null, '/user/list', '1', '是');
INSERT INTO `t_menu` VALUES ('t_user_look', '查看用户', 't_user_list', null, '/user/look', '0', '是');
INSERT INTO `t_menu` VALUES ('t_user_update', '修改用户', 't_user_list', null, '/user/update', '0', '是');

-- ----------------------------
-- Table structure for `t_org`
-- ----------------------------
DROP TABLE IF EXISTS `t_org`;
CREATE TABLE `t_org` (
  `id` varchar(40) NOT NULL COMMENT '编号',
  `name` varchar(60) DEFAULT NULL COMMENT '名称',
  `comcode` varchar(40) DEFAULT NULL COMMENT '代码',
  `pid` varchar(40) DEFAULT NULL COMMENT '上级部门ID',
  `sysid` varchar(40) DEFAULT NULL COMMENT '子系统ID',
  `type` int(11) DEFAULT NULL COMMENT '0,组织机构 1.部门',
  `leaf` int(11) DEFAULT NULL COMMENT '叶子节点(0:树枝节点;1:叶子节点)',
  `sortno` int(11) DEFAULT NULL COMMENT '排序号',
  `description` varchar(2000) DEFAULT NULL COMMENT '描述',
  `state` varchar(2) DEFAULT '是' COMMENT '是否有效(否/是)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='部门';

-- ----------------------------
-- Records of t_org
-- ----------------------------

-- ----------------------------
-- Table structure for `t_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` varchar(40) NOT NULL COMMENT '角色ID',
  `name` varchar(60) DEFAULT NULL COMMENT '角色名称',
  `code` varchar(255) DEFAULT NULL COMMENT '权限编码',
  `pid` varchar(40) DEFAULT NULL COMMENT '上级角色ID',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `state` varchar(2) DEFAULT '是' COMMENT '是否有效(否/是)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('admin', '管理员', 'admin', null, null, '是');

-- ----------------------------
-- Table structure for `t_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu`;
CREATE TABLE `t_role_menu` (
  `id` varchar(40) NOT NULL COMMENT '编号',
  `roleId` varchar(40) NOT NULL COMMENT '角色编号',
  `menuId` varchar(40) NOT NULL COMMENT '菜单编号',
  PRIMARY KEY (`id`),
  KEY `fk_t_role_menu_roleId_t_role_id` (`roleId`),
  KEY `fk_t_role_menu_menuId_t_menu_id` (`menuId`),
  CONSTRAINT `fk_t_role_menu_menuId_t_menu_id` FOREIGN KEY (`menuId`) REFERENCES `t_menu` (`id`),
  CONSTRAINT `fk_t_role_menu_roleId_t_role_id` FOREIGN KEY (`roleId`) REFERENCES `t_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色菜单中间表';

-- ----------------------------
-- Records of t_role_menu
-- ----------------------------
INSERT INTO `t_role_menu` VALUES ('0d3311f2-7c4a-439d-98c8-e21e7429aba5', 'admin', 't_menu_update');
INSERT INTO `t_role_menu` VALUES ('152ee384-d2bd-4110-a009-f21b9415fd61', 'admin', 't_dic_data_minzu_update');
INSERT INTO `t_role_menu` VALUES ('1abf69f8-a86a-4153-a283-265525fc6b0c', 'admin', 't_fwlog_look');
INSERT INTO `t_role_menu` VALUES ('21f7db93-260c-4fab-94c0-d64075a5dd90', 'admin', 't_role_update');
INSERT INTO `t_role_menu` VALUES ('25e335c8-cf2a-40a7-bc01-b164d15029f7', 'admin', 't_dic_data_grade_list');
INSERT INTO `t_role_menu` VALUES ('2c0de90b-2445-4e51-8054-ad0df9ccdaae', 'admin', 't_dic_data_minzu_list');
INSERT INTO `t_role_menu` VALUES ('312dcf9a-64a1-4da4-b582-870315a6d102', 'admin', 'system_manager');
INSERT INTO `t_role_menu` VALUES ('329f9d65-48e4-4b30-8b8a-b49760e3e9f0', 'admin', 't_dic_data_grade_update');
INSERT INTO `t_role_menu` VALUES ('3a5dcfad-6f59-447b-87e7-237d1655b85a', 'admin', 't_dic_data_grade_delete');
INSERT INTO `t_role_menu` VALUES ('4327222a-6aee-46a8-8238-3fc25acc355b', 'admin', 'b08d9cde-9c00-41ac-a4e0-303542a88249');
INSERT INTO `t_role_menu` VALUES ('463cbaa2-b1a9-43bf-95da-6ee3709c6a8e', 'admin', 't_dic_data_xueli_update');
INSERT INTO `t_role_menu` VALUES ('465f5acb-56e6-4057-b684-bb9ab06f15b0', 'admin', 't_dic_data_xueli_delMulti');
INSERT INTO `t_role_menu` VALUES ('5577db2b-b2c1-4053-95f4-6c16a65a52ff', 'admin', 't_dic_data_xueli_look');
INSERT INTO `t_role_menu` VALUES ('65a60860-df83-446b-8821-3286a8293a76', 'admin', 't_dic_data_minzu_delMulti');
INSERT INTO `t_role_menu` VALUES ('72e956c1-4aef-4bb6-85ce-ebf7c1f8813a', 'admin', 't_dic_data_minzu_look');
INSERT INTO `t_role_menu` VALUES ('77acc35a-47b3-47d6-b8b3-45cc9a4eb892', 'admin', 'dic_manager');
INSERT INTO `t_role_menu` VALUES ('7c781759-cdf7-4172-96a5-349de6660323', 'admin', 't_dic_data_xueli_delete');
INSERT INTO `t_role_menu` VALUES ('7d4a822f-11a0-410d-9f66-45e2b79fda8f', 'admin', 't_menu_delMulti');
INSERT INTO `t_role_menu` VALUES ('7f84a8e3-eadf-4c94-adbc-a20348dea68f', 'admin', 't_menu_delete');
INSERT INTO `t_role_menu` VALUES ('9cbb8039-6768-4a12-9d06-7d3c931983c3', 'admin', 't_menu_list');
INSERT INTO `t_role_menu` VALUES ('9fd1e1ec-9d5e-4492-a3c4-e4745064f5f8', 'admin', 't_role_list');
INSERT INTO `t_role_menu` VALUES ('a1c6634a-68ee-4fa0-a504-81ca19b9e7e2', 'admin', 't_role_delete');
INSERT INTO `t_role_menu` VALUES ('a36d4646-93cc-4dd0-932b-69a1bfb8ea3e', 'admin', 'limtDistribute_update');
INSERT INTO `t_role_menu` VALUES ('acf38364-15a1-4a4c-b724-c1811fbb89f0', 'admin', '933eb27c-0f2d-45fb-9806-457281fbe395');
INSERT INTO `t_role_menu` VALUES ('b51a1590-115f-4d32-a662-fd55884955c4', 'admin', 't_menu_look');
INSERT INTO `t_role_menu` VALUES ('b88861cd-04be-4e18-9bb4-67bdd19e44d7', 'admin', 't_role_delMulti');
INSERT INTO `t_role_menu` VALUES ('c4424787-d29d-4801-a557-885b6d83beb5', 'admin', 'adac3ab9-b677-4aa0-b39f-08762f30aaa1');
INSERT INTO `t_role_menu` VALUES ('cf5d13fa-ffac-49eb-9168-b92959f2f475', 'admin', 't_dic_data_grade_look');
INSERT INTO `t_role_menu` VALUES ('d17d7c1f-7971-425a-9062-844e68f0aa1f', 'admin', 't_dic_data_minzu_delete');
INSERT INTO `t_role_menu` VALUES ('d5a36137-b65d-41d5-b79e-7aa15e1e56d1', 'admin', 't_auditlog_look');
INSERT INTO `t_role_menu` VALUES ('d97ba093-b8bb-4fc1-807a-d7425bd77da9', 'admin', 'f88ee4ad-ca8e-4102-89c4-926a53e8f6b9');
INSERT INTO `t_role_menu` VALUES ('db7d1009-2eae-43e4-88e9-131e53f1973d', 'admin', 't_auditlog_list');
INSERT INTO `t_role_menu` VALUES ('de539d3c-80db-4cf3-a870-7044a916bb6d', 'admin', 'b92e1ca1-b277-4a29-86c3-f470eb03d593');
INSERT INTO `t_role_menu` VALUES ('e253afc1-de08-456a-895f-38e75bb2d071', 'admin', 't_role_look');
INSERT INTO `t_role_menu` VALUES ('eae42a11-26e3-4b24-83fe-0fc8879c0ea8', 'admin', 't_dic_data_grade_delMulti');
INSERT INTO `t_role_menu` VALUES ('ef77e5c1-3497-48f6-8154-ce5feea4b34f', 'admin', 't_fwlog_list');
INSERT INTO `t_role_menu` VALUES ('f2210536-7ab9-4194-af18-7b74507e0734', 'admin', 't_dic_data_xueli_list');
INSERT INTO `t_role_menu` VALUES ('f6086b98-c181-4371-beb0-ddd0e59010ff', 'admin', 'limtDistribute_list');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` varchar(40) NOT NULL COMMENT '编号',
  `name` varchar(30) DEFAULT NULL COMMENT '姓名',
  `workno` varchar(40) DEFAULT NULL COMMENT '工号',
  `account` varchar(40) DEFAULT NULL COMMENT '账号',
  `password` varchar(40) DEFAULT NULL COMMENT '密码',
  `cardno` varchar(40) DEFAULT NULL COMMENT '身份证',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `sex` varchar(2) DEFAULT '男' COMMENT '性别',
  `phone` varchar(16) DEFAULT NULL COMMENT '电话号码',
  `mobile` varchar(16) DEFAULT NULL COMMENT '手机号码',
  `email` varchar(60) DEFAULT NULL COMMENT '邮箱',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `gradeId` varchar(40) DEFAULT NULL COMMENT '级别',
  `eduName` varchar(40) DEFAULT NULL COMMENT '学历',
  `fireName` varchar(30) DEFAULT NULL COMMENT '紧急联系人',
  `firePhone` varchar(30) DEFAULT NULL COMMENT '紧急联系电话',
  `description` varchar(2000) DEFAULT NULL COMMENT '备注',
  `state` varchar(10) DEFAULT '是' COMMENT '是否有效,是/否/离职',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('admin', 'admin', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', null, null, '男', null, null, null, null, null, null, null, null, null, '是');

-- ----------------------------
-- Table structure for `t_user_org`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_org`;
CREATE TABLE `t_user_org` (
  `id` varchar(40) NOT NULL COMMENT '编号',
  `userId` varchar(40) NOT NULL COMMENT '用户编号',
  `orgId` varchar(40) NOT NULL COMMENT '机构编号',
  `manager` varchar(2) DEFAULT '否' COMMENT '是否主管,是/否',
  PRIMARY KEY (`id`),
  KEY `fk_t_user_org_userId_t_user_id` (`userId`),
  KEY `fk_t_user_org_orgId_t_org_id` (`orgId`),
  CONSTRAINT `fk_t_user_org_orgId_t_org_id` FOREIGN KEY (`orgId`) REFERENCES `t_org` (`id`),
  CONSTRAINT `fk_t_user_org_userId_t_user_id` FOREIGN KEY (`userId`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户部门中间表';

-- ----------------------------
-- Records of t_user_org
-- ----------------------------

-- ----------------------------
-- Table structure for `t_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `id` varchar(40) NOT NULL COMMENT '编号',
  `userId` varchar(40) NOT NULL COMMENT '用户编号',
  `roleId` varchar(40) NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`id`),
  KEY `fk_t_user_role_userId_t_user_id` (`userId`),
  KEY `fk_t_user_role_roleId_t_role_id` (`roleId`),
  CONSTRAINT `fk_t_user_role_roleId_t_role_id` FOREIGN KEY (`roleId`) REFERENCES `t_role` (`id`),
  CONSTRAINT `fk_t_user_role_userId_t_user_id` FOREIGN KEY (`userId`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色中间表';

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('admin_admin', 'admin', 'admin');

-- ----------------------------
-- Table structure for `t_vest`
-- ----------------------------
DROP TABLE IF EXISTS `t_vest`;
CREATE TABLE `t_vest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `bduss` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_vest
-- ----------------------------
INSERT INTO `t_vest` VALUES ('1', '我的田俊', 'x230381871', 'lVOMHpBS3lMb2dRa2RMaW8xRVZkSkVkekZUSk41bDhYVEIxYjBtWVA0NmRpMVJUQVFBQUFBJCQAAAAAAAAAAAEAAADd0povztK1x', '1', '2014-03-23 00:00:00');
