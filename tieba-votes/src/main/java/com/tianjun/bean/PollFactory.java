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
		}if(type.equals("ne")){
			bean.setUserid("818522544");
			bean.setUsername("凉薄诱惑");
			bean.setPostid("47652915051");
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
	public PollBean getPoll(String type){
		PollBean bean = new PollBean();
		bean.setForumid("287798");
		bean.setWord("酷派");
		bean.setActivity("1429");
		bean.setThreadid("2912423844");
		if(type.equals("tj")){
			bean.setUserid("1099905073");
			bean.setUsername("月满卿");
			bean.setPostid("47197269187");
			return bean;
		}
		if(type.equals("ff")){
			bean.setUserid("1095483901");
			bean.setUsername("冰糖飞飞飞");
			bean.setPostid("47164019858");
			return bean;
		}
		if(type.equals("qm")){
			bean.setUserid("1093143305");
			bean.setUsername("I诺千金");
			bean.setPostid("47165512517");
			return bean;
		}
		if(type.equals("ne")){
			bean.setUserid("1065275510");
			bean.setUsername("乄薰");
			bean.setPostid("47150519049");
			return bean;
		}
		if(type.equals("ne1")){
			bean.setUserid("867140402");
			bean.setUsername("萌二宁");
			bean.setPostid("47150002835");
			return bean;
		}
		if(type.equals("tj1")){
			bean.setUserid("1527842");
			bean.setUsername("偷你一笑");
			bean.setPostid("47167923030");
			return bean;
		}
		if(type.equals("qs")){
			bean.setUserid("19316033");
			bean.setUsername("美丽青烟");
			bean.setPostid("47168489553");
			return bean;
		}
		return bean;
	}
}
