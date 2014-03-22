package com.tianjun.bean;

public class PollFactory {
	private static PollFactory poll;
	private PollFactory(){}
	public static PollFactory getInstance(){
		if(poll==null)
			poll=new PollFactory();
		return poll;
	}
	public PollBean getHn(String type){
		PollBean bean = new PollBean();
		return bean;
	}
	public PollBean getJd(String type){
		PollBean bean = new PollBean();
		return bean;
	}
}
