package com.tianjun.main;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Random;

import org.apache.log4j.Logger;

import com.tianjun.thread.ReplyThread;
import com.tianjun.util.PostUtils;
import com.tianjun.util.ReplyUtil;

public class Client {
	private static Logger log = Logger.getLogger(Client.class);
	private static volatile String CONFIGDIR="conf";
	class ClientThread extends Thread{
		private String filename;
		@Override
		public void run() {
			try {
				process(filename);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		public ClientThread(String filename) {
			super();
			this.filename = filename;
		}
		
	}
	public static void main(String[] args) throws IOException, Exception {
		// TODO Auto-generated method stub
		log.info("设计者:贴吧生活");
		log.info("最后更新时间:2014-01-24");
		log.info("开始任务 初始化配置文件");
		
		try{
			Client c = new Client();
			File file = new File(CONFIGDIR);
			if(file.exists()&&file.isDirectory())
			{
				for(File f : file.listFiles()){
					c.start(f);
				}
			}else{
				log.error("conf文件夹不存在");
			}
		}catch(Exception e){
			 e.printStackTrace();
			log.error("出错 "+e.getMessage());
		}
		log.info("程序执行完毕");
	}
	private void start(File f){
		if (f.isFile() && f.getName().endsWith("properties")) {
			log.info("检测到文件"+f.getName());
			String str=CONFIGDIR+File.separator+f.getName();
			new  ClientThread(str).start();
		}
	}
	private  void process(String configName) throws Exception {
		Properties p = new Properties();
		p.load(new FileInputStream(configName));

		String contexts = PostUtils.parseUtf(p.getProperty("at_context"));
		int replyNum = PostUtils.parseInt(p.getProperty("reply_num"));

		String filename = PostUtils.parseUtf(p.getProperty("at_filename"));
		String bduss = p.getProperty("bduss");
		String pid = p.getProperty("pid");
		String clientType = p.getProperty("client_type");
		int sleep = PostUtils.parseInt(p.getProperty("sleep"));
		int likeAdd = PostUtils.parseInt(p.getProperty("likeAdd"));
		int enable = PostUtils.parseInt(p.getProperty("enable"));
		int reply_l = PostUtils.parseInt(p.getProperty("reply_l"));
		int norepeat = PostUtils.parseInt(p.getProperty("norepeat"));

		String lzlQuoteId = p.getProperty("lzlQuoteId");
		if(enable!=1)
		{
			log.info("配置文件" + configName + "不执行状态");
			return;
		}
		log.info("配置文件" + configName + " 初始化完毕");

		List<String> atList = initAtList(filename);
		if (atList != null) {
			replyNum = atList.size();
		}

		String cookie = ReplyUtil.getCookieByBudss(bduss);
		log.debug("获取用户名 贴吧forum_id ,forum_name,回复数");
		Map<String, String> map = ReplyUtil.initfidByTid(pid);
		int reply_now = PostUtils.parseInt(map.get("l_reply_num"));
		String username = ReplyUtil.getUserInfo(cookie);
		if (reply_l != 0) {
			log.debug("检测到指定楼层参数 指定回复" + reply_l + "楼,目前" + reply_now + "楼");
			while (reply_now < reply_l)// 如果 帖子回复层数 小于 数指定回复层数 不停的读取
			{
				log.info("指定回复" + reply_l + "楼,目前" + reply_now + "楼");
				map = ReplyUtil.initfidByTid(pid);
				reply_now = PostUtils.parseInt(map.get("l_reply_num"));
			}
			log.info("达到条件 正在准备回复");
		}
		ReplyUtil reply = new ReplyUtil();
		reply.setBduss(bduss);
		reply.setTid(pid);
		reply.setFid(map.get("fid"));
		reply.setTbName(map.get("tbName"));
		reply.setClientType(clientType);
		reply.setUsername(username);
		reply.getVoideParam();
		reply.setCookie(cookie);
		reply.setLzlQuoteId(lzlQuoteId);
		if (likeAdd == 1) {
			reply.likeAdd();
		}

		log.info("准备进行回复，总执行次数" + replyNum);
		int index = 0;

		String[] context = contexts.split(",");
		String[] videos = p.getProperty("video_url").split(",");
		String[] imgs = p.getProperty("img_url").split(",");

		while (index < replyNum) {
			if (norepeat != 0) {
				map = ReplyUtil.initfidByTid(pid);
				if (map.get("l_username").equals(username)) {
					log.info("最后一楼是" + username + "也是自己 暂停发贴 " + sleep + "毫秒");
					Thread.sleep(sleep);
					continue;
				}
			}
			if (index == replyNum)
				return;

			int context_index = new Random().nextInt(context.length);
			// int videos_index = new Random().nextInt(videos.length);
			int imgs_index = new Random().nextInt(imgs.length);

			String s = context[context_index];

			String ext = "";
			if (atList != null)
				ext = atList.get(index);
			s = String.format(s, ext);

			reply.setReplyContext(s);
			if (!videos[0].isEmpty())
				reply.setVideo_url(videos[context_index].trim());
			reply.setImg_url(imgs[imgs_index].trim());

			new Thread(new ReplyThread(reply)).start();
			Thread.sleep(sleep);
			index++;
		}
	}

	private static List<String> initAtList(String filename) throws Exception {
		// TODO Auto-generated method stub
		List<String> atList = null;
		if (!filename.isEmpty()) {
			log.info("初始化召唤列表");
			atList = new ArrayList<String>();
			List<String> aList = PostUtils.getAllTextUtf8(filename, "utf-8");
			StringBuffer str = new StringBuffer();
			for (int i = 0; i < aList.size(); i++) {
				str.append("@").append(aList.get(i)).append(" ");
				if (i % 5 == 4) {
					atList.add(str.toString());
					log.debug(str.toString());
					str = new StringBuffer();
				}
			}
			if (!str.toString().isEmpty())
				atList.add(str.toString());
			log.info("召唤列表获取完毕");
		}
		return atList;
	}
}
