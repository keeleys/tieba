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
		PollBean tj = PollFactory.getInstance().getHn("tj");
		PollBean tj1 = PollFactory.getInstance().getHn("tj1");
		PollBean tj2 = PollFactory.getInstance().getHn("tj2");
		// PollBean ne = PollFactory.getInstance().getHn("ne");
		log.info("开始投票");
		log.info(list.size());

		// new Thread(new Tp(ff,list.subList( list.size()/3,
		// list.size()/2))).run();
		new Thread(new Tp(tj, list.subList(461, 500)).setSleep(30*1000L)).start();
		new Thread(new Tp(tj1, list.subList(500, 540)).setSleep(30*1000L)).start();
		new Thread(new Tp(tj2, list.subList(540, 580)).setSleep(30*1000L)).start();
		// new Thread(new Tp(ne,list.subList( 20, 90))).start();
	}
}
