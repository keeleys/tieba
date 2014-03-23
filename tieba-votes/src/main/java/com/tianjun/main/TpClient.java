package com.tianjun.main;

import java.util.List;

import org.apache.log4j.Logger;

import com.tianjun.bean.Bduss;
import com.tianjun.bean.PollBean;
import com.tianjun.bean.PollFactory;

public class TpClient {
	private static Logger log = Logger.getLogger(TpClient.class);
	

	public static void main(String[] args) throws Exception {
		String dir = "conf/";
		String filename = dir + "俊俊2W.icid";// 21390
		List<Bduss> list = Tp.findBduss(filename);
		log.info("程序开始 filename:" + filename);
		//PollBean tj = PollFactory.getInstance().getZy("qm2");
		 PollBean tj = PollFactory.getInstance().getHn("ff");
		log.info("开始投票");
		log.info(list.size());

		// new Thread(new Tp(ff,list.subList( list.size()/3,
		new Thread(new Tp(tj, list.subList(1350, 1650)) ).start();
	}
}
