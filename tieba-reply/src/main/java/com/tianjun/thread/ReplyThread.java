package com.tianjun.thread;

import org.apache.log4j.Logger;

import com.google.gson.JsonSyntaxException;
import com.tianjun.util.ReplyUtil;

/**
 * 回帖线程
 * @author tianjun
 *
 */
public class ReplyThread implements Runnable{
	private ReplyUtil reply;
	private static Logger log = Logger.getLogger(ReplyThread.class);
	public void run() {
		String result = "";
		try {
			result = reply.reply();
			reply.resultResolve(result,reply.getClientType());
		} catch (JsonSyntaxException j) {
			log.error("结果解析异常 " + j.getMessage());
			log.error(result);
		} catch (Exception e) {
			e.printStackTrace();
			log.error("回复异常");
		}
	}
	public ReplyUtil getReply() {
		return reply;
	}
	public void setReply(ReplyUtil reply) {
		this.reply = reply;
	}
	public ReplyThread(ReplyUtil reply) {
		super();
		this.reply = reply;
	}
	public ReplyThread() {
		super();
	}
	
	
}
