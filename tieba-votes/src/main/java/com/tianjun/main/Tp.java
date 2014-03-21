package com.tianjun.main;

import java.io.FileWriter;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import com.google.gson.Gson;
import com.tianjun.bean.Bduss;
import com.tianjun.bean.PollBean;
import com.tianjun.util.PostUtils;
import com.tianjun.util.ReplyUtil;

public class Tp implements Runnable{
	class ResultJson{
		private int no;
	}
	class PollControl implements Runnable{
		private Bduss b;
		
		public PollControl(Bduss b) {
			super();
			this.b = b;
		}

		public void run() {
			// TODO Auto-generated method stub
			//log.info(b.getUsername()+"开始投票");
			int pno=poll(b,20);
			if(pno == 340012){
				try {
					like(b);
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
				}
				poll(b,20);
			}
		}
		
	}
	private static Logger log = Logger.getLogger(Tp.class);
	public	static List<Bduss > findBduss(String icid) throws Exception{
		List<String> list = PostUtils.getAllText(icid);
		List<Bduss > bdussList = new ArrayList<Bduss>();
		for(String bduss :  list){
			Bduss bd= new Bduss();
			if(bduss.isEmpty()||bduss.length()<100){
				break;
			}
			bduss=bduss.trim();
			String tmp=bduss.substring(bduss.indexOf("BDUSS=")+6, bduss.length()-1);
			String userinfo = bduss.substring(bduss.indexOf("(")+1, bduss.indexOf(")"));
			String[] infos=userinfo.split(",");
			bd.setBduss(tmp);
			bd.setUsername(infos[0]);
			if(infos.length>1)
				bd.setPassword(infos[1]);
			bdussList.add(bd);
		}
		return bdussList;
	}
	private int rSum=0;
	private PollBean pollBean;
	private List<Bduss> bdussList;
	private List<Bduss> errList=new ArrayList<Bduss>();
	public Tp(PollBean pollBean, List<Bduss> bdussList) {
		super();
		this.pollBean = pollBean;
		this.bdussList = bdussList;
	}
	public List<Bduss> getErrList() {
		return errList;
	}

	public PollBean getPollBean() {
		return pollBean;
	}
	public String getPollParam(String tbs) throws UnsupportedEncodingException{
			StringBuffer param=new StringBuffer();
			
			param.append("tbs="+tbs);
			param.append("&activity_id="+pollBean.getActivity());
			param.append("&post_id="+pollBean.getPostid());
			param.append("&user_id_ed="+pollBean.getUserid());
			param.append("&user_name_ed="+URLEncoder.encode(pollBean.getUsername(), "utf-8"));
			param.append("&word="+URLEncoder.encode(pollBean.getWord(), "utf-8"));
			param.append("&thread_id="+pollBean.getThreadid());
			param.append("&forum_id="+pollBean.getForumid());
			return param.toString();
	}
	public String getTbs(String cookie) throws Exception{
		
			return ReplyUtil.getTbs(cookie);
	
	}
	public int like(Bduss bduss) throws UnsupportedEncodingException{
		
		String cookie = ReplyUtil.getCookieByBudss(bduss.getBduss());
		String tbs=null;
		try {
			tbs = getTbs(cookie);
		} catch (Exception e) {
			log.info(bduss.getUsername()+"登录失败");
			errList.add(bduss);
			return -1;
		}
		StringBuffer like=new StringBuffer();
		like.append("fid=").append(pollBean.getForumid());
		like.append("&fname=").append(pollBean.getWord());
		like.append("&uid=").append( URLEncoder.encode(pollBean.getUsername(),"gbk") );
		like.append("&ie=").append("gbk");
		like.append("&tbs=").append(tbs);
		String str=PostUtils.sendPost("http://tieba.baidu.com/f/like/commit/add", like.toString(), cookie);
		int no=new Gson().fromJson(str, ResultJson.class).no;
		switch(no){
		case 0:
			System.out.println(bduss.getUsername()+"-喜欢成功");
			break;
		case 221:
			log.info("用户 "+ bduss.getUsername()+",已经是喜欢了");
			break;
		case 8 :
			log.error("用户 "+ bduss.getUsername()+",被封禁");
			break;
		default:
			log.error("用户 "+ bduss.getUsername()+",喜欢失败 错误码"+str);
			errList.add(bduss);
		}
		return no;
	}
	public int poll(Bduss bduss,int num){
		if(num==0) return 0;
		String cookie = ReplyUtil.getCookieByBudss(bduss.getBduss());
		String tbs = "";
		try{
			tbs=getTbs(cookie);
		}catch(Exception e){
			log.info(bduss.getUsername()+"登录失败");
			errList.add(bduss);
			return -1;
		}
		String param="";
		try {
			param =getPollParam(tbs);
		} catch (UnsupportedEncodingException e) {
			log.error("投注参数失败");
			return -1;
		}
		String str=PostUtils.sendPost("http://tieba.baidu.com/actstage/photoVote?", param, cookie);
		int no=new Gson().fromJson(str, ResultJson.class).no;
		switch(no){
		case 0:
			log.info(bduss.getUsername()+"-投票成功");
			rSum++;
			break;
		case 2130008:
			log.info("用户 "+ bduss.getUsername()+",已经投过了");
			break;
		case 220034:
		case 2220013:
			//break;
		case -1:
			log.error("用户 "+ bduss.getUsername()+"网络异常 第"+num);
			return poll(bduss,num-1);
		case 340012:
			log.info("用户"+ bduss.getUsername()+",没有喜欢");
			break;
		case 1:
		case 220012:
			log.error("用户 "+ bduss.getUsername()+",被封禁");
			break;
		default:
			log.error("用户 "+ bduss.getUsername()+",投票失败 错误码"+str);
			errList.add(bduss);
		}
		return no;
	}
	public void run() {
		try {
			long start = System.currentTimeMillis();
			for(Bduss b :bdussList){
				new Thread(new PollControl(b)).run();
				//Thread.sleep(60*1000);
			}
			long end =System.currentTimeMillis()-start;
			log.info(pollBean.getUsername()+"的投票结果,用时"+end+"毫秒,总共"+bdussList.size()+",成功:"+rSum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		writeErr();
	}
	public void setErrList(List<Bduss> errList) {
		this.errList = errList;
	}
	public void setPollBean(PollBean pollBean) {
		this.pollBean = pollBean;
	}
	
	public List<Bduss> getBdussList() {
		return bdussList;
	}
	public void setBdussList(List<Bduss> bdussList) {
		this.bdussList = bdussList;
	}
	public void writeErr(){
		FileWriter write=null;
		try {
			write = new FileWriter("err.txt",true);
			for(Bduss err : errList){
				String outStr=err.getUsername()+":"+err.getPassword();
				write.write(outStr);
				write.write(System.getProperty("line.separator"));
				write.flush();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			try {
				write.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}
