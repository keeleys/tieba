package com.tianjun.util;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.imageio.ImageIO;

import org.apache.commons.lang3.RandomStringUtils;
import org.apache.log4j.Logger;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

import com.google.gson.Gson;

/**
 * 回帖辅助类
 * @author tianjun
 *
 */
public class ReplyUtil {
	private static Logger log = Logger.getLogger(ReplyUtil.class);
	private String isphone;
	private String clientType;
	
	private String username;
	private String cookie;
	private String fid;
	private String tid;
	private String tbName;
	private String replyContext;
	private String bduss;
	private String img_url;
	private String video_url;
	
	private String lzlQuoteId;
	
	public String reply() {
		try {
			if (clientType == null || clientType.isEmpty()
					|| clientType.equals("0")) {
				return replyByComp();
			} else
				return replyByPhone();
		} catch (Exception e) {
			log.error("发贴异常 +" + e.getMessage());
			return "回复异常" + e.getMessage();
		}
		
	}
	public String replyByPhone() throws Exception{
		isphone="1";
		String param=getReplyIphoneParam();
		String sr=PostUtils.sendPost("http://c.tieba.baidu.com/c/c/post/add",param,cookie);
		return sr;
	}
	private String getReplyIphoneParam() throws Exception{
		String tbs=getTbs();
		Map<String,String> map = new LinkedHashMap<String,String>();
		long tidint = Long.parseLong(tid);
		tidint=tidint<2100000000L? tidint :(tidint - 4294967295L);
		
		replyContext=replyContext.replace("<br/>", "\n");
		map.put("BDUSS",bduss);
		map.put("_client_id","wappc_137"+RandomStringUtils.randomNumeric(10)+"_"+RandomStringUtils.randomNumeric(3));
		map.put("_client_type",clientType);
		map.put("_client_version","5.1.3");
		map.put("_phone_imei",MD5Util.MD5(RandomStringUtils.randomNumeric(16)));
		map.put("anonymous","0");
		map.put("content",URLEncoder.encode(replyContext,"utf-8"));
		map.put("fid",fid);
		map.put("is_ad","0");
		map.put("kw",URLEncoder.encode(tbName,"utf-8"));
		if(lzlQuoteId!=null&&!lzlQuoteId.isEmpty()&& !lzlQuoteId.trim().equals(""))
			map.put("quote_id",lzlQuoteId);
		map.put("net_type","1");
		map.put("tbs",tbs);
		map.put("tid",""+tidint);
		map.put("timestamp",""+new Date().getTime());
		String adddata="";
		for(String key:map.keySet()){
			adddata+=key+"="+map.get(key);
		}
		adddata="";
		for(String key:map.keySet()){
			adddata+="&"+key+"="+map.get(key);
		}
		adddata+="&sign="+MD5Util.MD5(URLDecoder.decode(adddata,"utf-8")+"tiebaclient!!!");
		adddata= adddata.substring(1);
		
		return adddata;
	}
	public String replyByComp() throws Exception{
		String param=getReplyParam();
		if(lzlQuoteId!=null&&!lzlQuoteId.isEmpty()&& !lzlQuoteId.trim().equals(""))
			param+="&quote_id="+lzlQuoteId+"&repostid="+lzlQuoteId;
		String sr=PostUtils.sendPost("http://tieba.baidu.com/f/commit/post/add",param,cookie);
		return sr;
	}
	private String getReplyParam() throws Exception{
		String tbs=getTbs();
		StringBuffer param=new StringBuffer();
		
		param.append("ie=utf-8");
		param.append("&fid="+fid);
		param.append("&tid="+tid);
		param.append("&vcode_md5=");
		param.append("&floor_num=2");
		param.append("&rich_text=1");
		param.append("&tbs="+tbs);
		param.append("&__type__=reply");
		param.append("&files="+URLEncoder.encode("[]", "utf-8"));
		param.append("&kw="+URLEncoder.encode(tbName, "utf-8"));
		
		if(img_url!=null&&!img_url.isEmpty()){
			replyContext+="<br/>"+getImgParam();
		}
		if(video_url!=null&&!video_url.isEmpty())
		{
			param.append("&video_url="+video_url);
			replyContext+="<br/>"+getVoideParam();
		}
		param.append("&content="+URLEncoder.encode(replyContext, "utf-8"));
		return param.toString();
	}
	public static Map<String,String> initfidByTid(String tid) throws Exception{
		String url="http://tieba.baidu.com/p/"+tid;
		String maxPage="100000000";
		
		Map<String,String> map = new HashMap<String,String>(4);
		//forum_id:2231108,forum_name:"吃豆豆"
		String baseresult =PostUtils.sendGet(url+="?pn="+maxPage);
		
		int fid_index= baseresult.indexOf("forum_id:");
		String str=baseresult.substring(fid_index+9);
		String fid=str.substring(0,str.indexOf(","));
		map.put("fid", fid);
		int tid_index= baseresult.indexOf("forum_name:");
		str=baseresult.substring(tid_index+12);
		String tbName=str.substring(0,str.indexOf(",")-1);
		map.put("tbName", tbName);
		
		Document doc=Jsoup.parse(baseresult);
		Element e=doc.select(".l_post").last();
		if(e!=null)
		{
			String json=e.attr("data-field");
			VoideJson v=new Gson().fromJson(json, VoideJson.class);
			String floor=v.content.floor;
			map.put("l_reply_num", floor);
			map.put("l_username", v.author.name);
		}
		return map;
	}
	
	private String getTbs() throws Exception{
		String result =PostUtils.sendGet("http://tieba.baidu.com/dc/common/tbs","",cookie);
		log.debug(result);
		TbsJson tbsJoson= new Gson().fromJson(result, TbsJson.class);
		if(tbsJoson.is_login==0){
			log.error("登录失败"+result);
			throw new RuntimeException(username+"登录失败");
		}
		return tbsJoson.tbs;
	}
	
	public String getImgParam(){
		log.debug("图片文件准备处理");
		int maxWidth=366;
		int maxHeight=550;
		int width=0,height=0;
		
		try {
			BufferedImage bi = ImageIO.read(new URL(img_url));
			width=bi.getWidth();
			height=bi.getHeight();
			log.debug("原始图片宽度 :"+width+",图片高度:"+height);
			if(width>maxWidth){
				
				height=maxWidth*height/width;
				width=maxWidth;
			}if(height>maxHeight){
				width=maxHeight*width/height;
				height=maxHeight;
			}
			log.debug("压缩图片宽高后,宽度 :"+width+",图片高度:"+height);
		} catch (IOException e) {
			width=maxWidth;
			height=maxHeight;
			log.error("获取图像信息失败 "+e.getMessage()+",设置默认高度350,宽度 350");
		}
		StringBuffer sb=new StringBuffer();
		sb.append("<img class=\"BDE_Image\" src=\"");
		sb.append(img_url);
		sb.append("\" unselectable=\"on\" pic_type=\"1\" height=\""+width+"\" width=\""+height+"\">");
		return sb.toString();
	}
	public String getVoideParam() throws UnsupportedEncodingException{
		if(video_url==null||video_url.isEmpty()) return null;
		log.debug("视频文件准备处理："+video_url);
		String param="type=0&url="+URLEncoder.encode(getVideo_url(),"utf-8");
		String sr=PostUtils.sendPost("http://tieba.baidu.com/f/commit/commonapi/getVideoInfoApi",param,cookie);
		VoideJson v =new Gson().fromJson(sr, VoideJson.class);
		if(v!=null&&v.no==0)
		{
			StringBuffer sb =new StringBuffer();
			sb.append("<embed allowfullscreen=\"true\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" type=\"application/x-shockwave-flash\" wmode=\"transparent\" play=\"true\" loop=\"false\" menu=\"false\" allowscriptaccess=\"never\" scale=\"noborder\" src=\"");
			sb.append(v.data.swf_url);
			sb.append("\" class=\"BDE_Flash\" width=\"500\" height=\"450\" vsrc=\"");
			sb.append(v.data.html_url);
			sb.append("\" vpic=\"");
			sb.append(v.data.img_url);
			sb.append("\" pkey=\"");
			sb.append(v.data.pri_key);
			sb.append("\"/>");
			log.info("视频文件处理完毕");
			return sb.toString();
		}else{
			log.error("视频信息获取失败");
			return null;
		}
	}
	/**
	 * 添加关注
	 * @return
	 */
	public boolean likeAdd(){
		try {
			
			String url="http://tieba.baidu.com/f/like/commit/add";
			String tbs=getTbs();
			
			StringBuffer param =new StringBuffer();
			param.append("fid=").append(this.fid);
			param.append("&fname=").append( this.tbName);
			param.append("&uid=").append( URLEncoder.encode(this.username,"gbk") );
			param.append("&ie=").append("gbk");
			param.append("&tbs=").append(tbs);
			
			String result =PostUtils.sendPost(url,param.toString(),this.cookie);
			log.debug("likeAdd result:"+result);
			int no=new Gson().fromJson(result, VoideJson.class).no;
			switch(no){
			case 0:
				log.info("贴吧"+tbName+"喜欢成功");break;
			case 221:
				 log.info("贴吧"+tbName+"已经是关注啦");break;
			default:
				 log.error("贴吧"+tbName+"喜欢失败,"+result); 
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	} 
	public static String getUserInfo(String cookies){
		String url="http://tieba.baidu.com/f/user/json_userinfo";
		String result = PostUtils.sendGet(url,"",cookies);
		log.debug(result);
		JsonNo v= new Gson().fromJson(result, JsonNo.class);
		if(v.no==0){
			VoideJson j= new Gson().fromJson(result, VoideJson.class);
			log.debug("检测到到用户"+j.data.user_name_show);
			return UnicodeConverter.decodeUnicode(j.data.user_name_show);
		}else{
			log.error("检测不到用户，请检查bduss");
			return null;
		}
	}
	/**
	 * 解析返回
	 * @param result
	 */
	public int resultResolve(String result,String clientType){
		log.debug(result);
		JsonNo jsonNo= new Gson().fromJson(result, JsonNo.class);
		int type = PostUtils.parseInt(clientType);
		int no = type==0?jsonNo.no:jsonNo.error_code;
		switch (no) {
		case 0:
			log.info(this.getUsername() + ",回复成功 ");
			break;
		case 5:
			log.error(this.getUsername() + ",验证码不正确，请重新输入");break;
		case 40:
			log.error(this.getUsername() + ",请点击验证码完成发贴");break;
		case 34:
		case 220034:
			log.error(this.getUsername() + "您说话太快了:) 请先停下来喝杯茶吧 ,no=" + no);
			break;
		default:
			log.error("回复失败 未知错误 , "+result);
		}
		return no;
	}
	class JsonNo{
		int no;
		int err_code;
		int error_code;
	}
	/**
	 * 
	 * @author tianjun
	 *
	 */
	class VoideJson extends JsonNo{
		private Data data;
		private Content content;
		private Author author;
		class Data{
			private String html_url;
			private String img_url;
			private String pri_key;
			private String swf_url;
			
			private String user_name_show;
		}
		class Content{
			private String floor;
		}class Author{
			private String name;
		}
	}
	/**
	 * {"tbs":"0b21246c8742a5ca1390203728","is_login":1}
	 * @author tianjun
	 *
	 */
	class TbsJson{
		private String tbs;
		private int is_login;
	}
	
	public void setTid(String tid) {
		this.tid = tid;
	}
	public void setTbName(String tbName) {
		this.tbName = tbName;
	}
	public void setReplyContext(String replyContext) {
		this.replyContext = replyContext;
	}
	public void setFid(String fid) {
		this.fid = fid;
	}
	public void setBduss(String bduss) {
		this.bduss = bduss;
	
	}
	public void setVideo_url(String video_url) {
		this.video_url = video_url;
	}
	
	@SuppressWarnings("deprecation")
	public static String getCookieByBudss(String bduss){
		return 	"BDUSS=" + bduss + ";domain=baidu.com;path=/;expires="
				+ new Date().toGMTString();
	}
	public static String getTbs(String cookie) throws Exception{
		String result =PostUtils.sendGet("http://tieba.baidu.com/dc/common/tbs","",cookie);
		//log.debug(result);
		TbsJson tbsJoson= new Gson().fromJson(result, TbsJson.class);
		if(tbsJoson.is_login==0){
			//log.error("登录失败"+result);
			throw new RuntimeException("登录失败");
		}
		return tbsJoson.tbs;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getCookie() {
		return cookie;
	}
	public String getFid() {
		return fid;
	}
	public String getTid() {
		return tid;
	}
	public String getTbName() {
		return tbName;
	}
	public String getReplyContext() {
		return replyContext;
	}
	public String getBduss() {
		return bduss;
	}
	public String getIsphone() {
		return isphone;
	}
	public String getVideo_url() {
		return video_url;
	}
	public void setCookie(String cookie) {
		this.cookie = cookie;
	}

	public String getClientType() {
		return clientType;
	}

	public void setClientType(String clientType) {
		this.clientType = clientType;
	}
	
	
	public String getImg_url() {
		return img_url;
	}
	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}
	public String getLzlQuoteId() {
		return lzlQuoteId;
	}
	public void setLzlQuoteId(String lzlQuoteId) {
		this.lzlQuoteId = lzlQuoteId;
	}
	
}
