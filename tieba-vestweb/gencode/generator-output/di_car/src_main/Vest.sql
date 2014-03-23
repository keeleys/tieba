
INSERT INTO t_menu values('t_vest_list','Vest管理', 'system_manager', null,'/vest/list','1','是');
INSERT INTO t_menu values('t_vest_update','修改Vest', 't_vest_list', null,'/vest/update','0','是');
INSERT INTO t_menu values('t_vest_look','查看Vest', 't_vest_list', null,'/vest/look','0','是');
INSERT INTO t_menu values('t_vest_export','导出Vest', 't_vest_list', null,'/vest/list/export','0','是');
INSERT INTO t_menu values('t_vest_delMulti','批量删除Vest', 't_vest_list', null,'/vest/delMulti','0','是');
INSERT INTO t_menu values('t_vest_delete','删除Vest', 't_vest_list', null,'/vest/delete','0','是');
INSERT INTO t_menu values('t_vest_upload','导入Vest', 't_vest_list', null,'/vest/upload','0','是');
INSERT INTO `t_role_menu` VALUES ('t_vest_list_admin', 'admin', 't_vest_list');
INSERT INTO `t_role_menu` VALUES ('t_vest_update_admin', 'admin', 't_vest_update');
INSERT INTO `t_role_menu` VALUES ('t_vest_look_admin', 'admin', 't_vest_look');
INSERT INTO `t_role_menu` VALUES ('t_vest_export_admin', 'admin', 't_vest_export');
INSERT INTO `t_role_menu` VALUES ('t_vest_delMulti_admin', 'admin', 't_vest_delMulti');
INSERT INTO `t_role_menu` VALUES ('t_vest_delete_admin', 'admin', 't_vest_delete');
INSERT INTO `t_role_menu` VALUES ('t_vest_upload_admin', 'admin', 't_vest_upload');
