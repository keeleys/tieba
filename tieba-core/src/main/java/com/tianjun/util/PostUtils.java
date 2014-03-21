package com.tianjun.util;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

public class PostUtils {
	private static Logger log = Logger.getLogger(PostUtils.class);

	/**
	 * 读取所有用户
	 * 
	 * @return
	 * @throws Exception
	 */
	public static List<String> getAllText(String fileName) throws Exception {
		// BufferedReader read = new BufferedReader(new UnicodeInputStream(new
		// FileInputStream(infile),"UTF-8"));
		try {
			BufferedReader read = new BufferedReader(new FileReader(fileName));
			String un;
			List<String> users = new ArrayList<String>();
			while ((un = read.readLine()) != null) {
				if (un != null && !un.isEmpty())
					users.add(un.trim());
			}
			read.close();
			return users;
		} catch (Exception e) {
			log.error(fileName + ":文件读取失败  " + e.getMessage());
		}
		return null;
	}
	public static List<String> getAllTextUtf8(String fileName,String charset) throws Exception {
		// BufferedReader read = new BufferedReader(new UnicodeInputStream(new
		// FileInputStream(infile),"UTF-8"));
		try {
			BufferedReader read = new BufferedReader( new InputStreamReader(new FileInputStream(fileName),charset));
			String un;
			List<String> users = new ArrayList<String>();
			while ((un = read.readLine()) != null) {
				if (un != null && !un.isEmpty())
					users.add(un.trim());
			}
			read.close();
			return users;
		} catch (Exception e) {
			log.error(fileName + ":文件读取失败  " + e.getMessage());
		}
		return null;
	}
	public static int parseInt(String str) {
		try {
			if (str == null || str.isEmpty())
				return 0;
			return Integer.parseInt(str);
		} catch (Exception e) {
			log.error(str + "转换成数字异常  转换失败" + e.getMessage());
		}
		return 0;
	}

	public static String parseUtf(String str)
			throws UnsupportedEncodingException {
		try {
			str = str.trim();
			return new String(str.getBytes("iso-8859-1"), "utf-8");
		} catch (Exception e) {
			log.error(str + "转换utf-8  转换失败" + e.getMessage());
		}
		return null;
	}

	public static String sendPost(String url, String param, String cookie){
		return sendPost(url,param,cookie,null);
	}
	public static String sendPost(String url, String param){
		return sendPost(url,param,null,null);
	}
	/**
	 * @param isphone
	 *            "1"代表是iphone
	 */
	public static String sendPost(String url, String param, String cookie,
			String isphone) {
		PrintWriter out = null;
		BufferedReader in = null;
		String result = "";
		try {
			URL realUrl = new URL(url);
			// 打开和URL之间的连接
			URLConnection conn = realUrl.openConnection();
			// 设置通用的请求属性
			conn.setRequestProperty("accept", "*/*");
			conn.setRequestProperty("connection", "Keep-Alive");
			if (isphone != null && "1".equals(isphone)) {
				conn.setRequestProperty("Content-Type",
						"application/x-www-form-urlencoded");
				conn.setRequestProperty(
						"User-Agent",
						"Mozilla/5.0 (iPhone; U; CPU like Mac OS X; en) AppleWebKit/420+ (KHTML, like Gecko) Version/3.0 Mobile/1A543a Safari/419.3");
			} else {
				conn.setRequestProperty("User-Agent",
						"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
			}
			if (cookie != null && !cookie.isEmpty())
				conn.setRequestProperty("Cookie", cookie);
			// 发送POST请求必须设置如下两行
			conn.setDoOutput(true);
			conn.setDoInput(true);
			// 获取URLConnection对象对应的输出流
			out = new PrintWriter(conn.getOutputStream());
			// 发送请求参数
			out.print(param);
			// flush输出流的缓冲
			out.flush();
			// 定义BufferedReader输入流来读取URL的响应
			in = new BufferedReader(
					new InputStreamReader(conn.getInputStream(),"gbk"));
			String line;
			while ((line = in.readLine()) != null) {
				result += line;
			}
		} catch (Exception e) {
			System.out.println("发送 POST 请求出现异常！" + e);
			e.printStackTrace();
		}
		// 使用finally块来关闭输出流、输入流
		finally {
			try {
				if (out != null) {
					out.close();
				}
				if (in != null) {
					in.close();
				}
			} catch (IOException ex) {
				ex.printStackTrace();
			}
		}
		return result;
	}

	public static String sendGet(String url){
		return sendGet(url,null,null);
	}
	public static String sendGet(String url, String param){
		return sendGet(url,param,null);
	}
	public static String sendGet(String url, String param, String cookie) {
		String result = "";
		BufferedReader in = null;
		try {
			String urlNameString = url + "?" + param;
			URL realUrl = new URL(urlNameString);
			// 打开和URL之间的连接
			URLConnection connection = realUrl.openConnection();
			// 设置通用的请求属性
			connection.setRequestProperty("accept", "*/*");
			connection.setRequestProperty("connection", "Keep-Alive");
			connection.setRequestProperty("user-agent",
					"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
			if (cookie != null && !cookie.isEmpty())
				connection.setRequestProperty("Cookie", cookie);
			// 建立实际的连接
			connection.connect();
			// 获取所有响应头字段
			// 定义 BufferedReader输入流来读取URL的响应
			in = new BufferedReader(new InputStreamReader(
					connection.getInputStream(),"gbk"));
			String line;
			while ((line = in.readLine()) != null) {
				result += line;
			}
		} catch (Exception e) {
			System.out.println("发送GET请求出现异常！" + e);
			e.printStackTrace();
		}
		// 使用finally块来关闭输入流
		finally {
			try {
				if (in != null) {
					in.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return result;
	}
}
