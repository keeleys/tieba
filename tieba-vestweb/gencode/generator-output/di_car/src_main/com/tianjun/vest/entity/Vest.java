package com.tianjun.vest.entity;

import org.springrain.frame.util.DateUtils;
import java.text.ParseException;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.StringUtils;
import javax.persistence.Id;
import javax.persistence.Table;
import org.springrain.frame.annotation.WhereSQL;

import org.springrain.frame.entity.BaseEntity;
/**
 * TODO 在此加入类描述
 * @copyright {@link 9iu.org}
 * @author springrain<Auto generate>
 * @version  2014-03-23 14:50:52
 * @see com.tianjun.vest.entity.Vest
 */
@Table(name="t_vest")
public class Vest  extends BaseEntity {
	
	private static final long serialVersionUID = 1L;

	//alias
	/*
	public static final String TABLE_ALIAS = "Vest";
	public static final String ALIAS_ID = "id";
	public static final String ALIAS_NAME = "name";
	public static final String ALIAS_PASSWORD = "password";
	public static final String ALIAS_BDUSS = "bduss";
	public static final String ALIAS_STATUS = "status";
	public static final String ALIAS_UPDATETIME = "updateTime";
    */
	//date formats
	//public static final String FORMAT_UPDATETIME = DateUtils.DATETIME_FORMAT;
	
	//columns START
	/**
	 * id
	 */
	private java.lang.Integer id;
	/**
	 * name
	 */
	private java.lang.String name;
	/**
	 * password
	 */
	private java.lang.String password;
	/**
	 * bduss
	 */
	private java.lang.String bduss;
	/**
	 * status
	 */
	private java.lang.Integer status;
	/**
	 * updateTime
	 */
	private java.util.Date updateTime;
	//columns END 数据库字段结束
	
	//concstructor

	public Vest(){
	}

	public Vest(
		java.lang.Integer id
	){
		this.id = id;
	}

	//get and set
	public void setId(java.lang.Integer value) {
		this.id = value;
	}
	
	@Id
     @WhereSQL(sql="id=:Vest_id")
	public java.lang.Integer getId() {
		return this.id;
	}
	public void setName(java.lang.String value) {
		    if(StringUtils.isNotBlank(value)){
			 value=value.trim();
			}
		this.name = value;
	}
	
     @WhereSQL(sql="name=:Vest_name")
	public java.lang.String getName() {
		return this.name;
	}
	public void setPassword(java.lang.String value) {
		    if(StringUtils.isNotBlank(value)){
			 value=value.trim();
			}
		this.password = value;
	}
	
     @WhereSQL(sql="password=:Vest_password")
	public java.lang.String getPassword() {
		return this.password;
	}
	public void setBduss(java.lang.String value) {
		    if(StringUtils.isNotBlank(value)){
			 value=value.trim();
			}
		this.bduss = value;
	}
	
     @WhereSQL(sql="bduss=:Vest_bduss")
	public java.lang.String getBduss() {
		return this.bduss;
	}
	public void setStatus(java.lang.Integer value) {
		this.status = value;
	}
	
     @WhereSQL(sql="status=:Vest_status")
	public java.lang.Integer getStatus() {
		return this.status;
	}
		/*
	public String getupdateTimeString() {
		return DateUtils.convertDate2String(FORMAT_UPDATETIME, getupdateTime());
	}
	public void setupdateTimeString(String value) throws ParseException{
		setupdateTime(DateUtils.convertString2Date(FORMAT_UPDATETIME,value));
	}*/
	
	public void setUpdateTime(java.util.Date value) {
		this.updateTime = value;
	}
	
     @WhereSQL(sql="updateTime=:Vest_updateTime")
	public java.util.Date getUpdateTime() {
		return this.updateTime;
	}
	
	public String toString() {
		return new StringBuffer()
			.append("id[").append(getId()).append("],")
			.append("name[").append(getName()).append("],")
			.append("password[").append(getPassword()).append("],")
			.append("bduss[").append(getBduss()).append("],")
			.append("status[").append(getStatus()).append("],")
			.append("updateTime[").append(getUpdateTime()).append("],")
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Vest == false) return false;
		if(this == obj) return true;
		Vest other = (Vest)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.isEquals();
	}
}

	
