package com.tianjun.util;
import java.security.MessageDigest;

public class MD5Util {
	public final static String MD5(String pwd) {
		//用于加密的字符
		char md5String[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
				'a', 'b', 'c', 'd', 'e', 'f' };
		try {
			//使用平台的默认字符集将此 String 编码为 byte序列，并将结果存储到一个新的 byte数组中
			byte[] btInput = pwd.getBytes();
			
			// 获得指定摘要算法的 MessageDigest对象，此处为MD5
			//MessageDigest类为应用程序提供信息摘要算法的功能，如 MD5 或 SHA 算法。
			//信息摘要是安全的单向哈希函数，它接收任意大小的数据，并输出固定长度的哈希值。 
			MessageDigest mdInst = MessageDigest.getInstance("MD5");
			//System.out.println(mdInst);  
			//MD5 Message Digest from SUN, <initialized>
			
			//MessageDigest对象通过使用 update方法处理数据， 使用指定的byte数组更新摘要
			mdInst.update(btInput);
			//System.out.println(mdInst);  
			//MD5 Message Digest from SUN, <in progress>
			
			// 摘要更新之后，通过调用digest（）执行哈希计算，获得密文
			byte[] md = mdInst.digest();
			//System.out.println(md);
			
			// 把密文转换成十六进制的字符串形式
			int j = md.length;
			//System.out.println(j);
			char str[] = new char[j * 2];
			int k = 0;
			for (int i = 0; i < j; i++) {   //  i = 0
				byte byte0 = md[i];  //95
				str[k++] = md5String[byte0 >>> 4 & 0xf];    //    5  
				str[k++] = md5String[byte0 & 0xf];   //   F
			}
			
			//返回经过加密后的字符串
			return new String(str);
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public static void main(String[] args) {
		//String str="BDUSS=lBqWEZlS3l5SW1XZ2kwMndZUmtmNGVvSUFuUFRFNDc4a2pSUGNhRnI4czlEZkpTQVFBQUFBJCQAAAAAAAAAAAEAAADd0povztK1xMzvv6EAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD2AylI9gMpSQ_client_id=04-00-DA-69-15-00-73-97-08-00-02-00-06-00-3C-43-01-00-34-F4-22-00-BC-35-19-01-5E-46_client_type=1_client_version=1.2.1.17_phone_imei=642b43b58d21b7a5814e1fd41b08e2a6anonymous=0content=testfid=3975834kw=第一次亲密的接触net_type=3tbs=9be5e259ebeb5c781389160277tid=-1553592015title=";
		//System.out.print(MD5Util.MD5("tiebaclient!!!"));
	}
}