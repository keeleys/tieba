package com.tianjun.bean;

public class PollFactory {
	private static PollFactory poll;
	private PollFactory(){}
	public static PollFactory getInstance(){
		if(poll==null)
			poll=new PollFactory();
		return poll;
	}
	public PollBean getZy(String type){
		PollBean bean = new PollBean();
		bean.setForumid("8750309");
		bean.setWord("章鱼卡");
		bean.setActivity("1471");
		bean.setThreadid("2937609601");
		if(type.equals("tj")){
			bean.setUserid("64297071");
			bean.setUsername("红色是酒");
			bean.setPostid("47806477327");
		}else if(type.equals("tj1")){
			bean.setUserid("3642243");
			bean.setUsername("只是可惜");
			bean.setPostid("47807707311");
		}else if(type.equals("tj2")){
			bean.setUserid("1527842");
			bean.setUsername("偷你一笑");
			bean.setPostid("47806628932");
		}else if(type.equals("520")){
			bean.setUserid("241203740");
			bean.setUsername("520_星宝贝");
			bean.setPostid("47598237697");
		}else if(type.equals("ne")){
			bean.setUserid("740148727");
			bean.setUsername("霸气小女人宁");
			bean.setPostid("47779696431");
		}else if(type.equals("qm")){
			bean.setUserid("989735444");
			bean.setUsername("冬天来了呵");
			bean.setPostid("47805296823");
		}else if(type.equals("qm2")){
			bean.setUserid("1043868101");
			bean.setUsername("萌二兔咩");
			bean.setPostid("47807963205");
		}else if(type.equals("ne1")){
			bean.setUserid("1089432088");
			bean.setUsername("一辈子拥有的爱");
			bean.setPostid("47806855453");
		}else if(type.equals("ff")){
			bean.setUserid("1095483901");
			bean.setUsername("冰糖飞飞飞");
			bean.setPostid("47807444761");
		}
		return bean;
	}
	public PollBean getHn(String type){
		PollBean bean = new PollBean();
		bean.setForumid("11644056");
		bean.setWord("湖北卫视我为喜剧狂");
		bean.setActivity("1460");
		bean.setThreadid("2930748904");
		if(type.equals("tj")){
			bean.setUserid("48598951");
			bean.setUsername("摄色兔");
			bean.setPostid("47652746618");
		}if(type.equals("tj1")){
			bean.setUserid("3642243");
			bean.setUsername("只是可惜");
			bean.setPostid("47703427358");
		}if(type.equals("tj2")){
			bean.setUserid("1527842");
			bean.setUsername("偷你一笑");
			bean.setPostid("47742592289");
		}if(type.equals("520")){
			bean.setUserid("241203740");
			bean.setUsername("520_星宝贝");
			bean.setPostid("47598237697");
		}if(type.equals("ne")){
			bean.setUserid("740148727");
			bean.setUsername("霸气小女人宁");
			bean.setPostid("47634586083");
		}if(type.equals("ff")){
			bean.setUserid("1095483901");
			bean.setUsername("冰糖飞飞飞");
			bean.setPostid("47809140635");
		}
		return bean;
	}
	public PollBean getJd(String type){
		PollBean bean = new PollBean();
		bean.setForumid("4151825");
		bean.setWord("九鼎天下");
		bean.setActivity("1418");
		bean.setThreadid("2902714331");
		if(type.equals("tj")){
			bean.setUserid("64297071");
			bean.setUsername("红色是酒");
			bean.setPostid("46945184139");
		}if(type.equals("ff")){
			bean.setUserid("1095483901");
			bean.setUsername("冰糖飞飞飞");
			bean.setPostid("46964169906");
		}
		return bean;
	}
}
