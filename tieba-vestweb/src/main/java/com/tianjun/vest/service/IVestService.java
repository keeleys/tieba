package com.tianjun.vest.service;

import org.springrain.demo.service.IBaseDemoService;

import com.tianjun.vest.entity.Vest;
/**
 * TODO 在此加入类描述
 * @copyright {@link 9iu.org}
 * @author springrain<Auto generate>
 * @version  2014-03-23 14:50:52
 * @see com.tianjun.vest.service.Vest
 */
public interface IVestService extends IBaseDemoService {
	
	/**
	 * 根据ID查找
	 * @param id
	 * @return
	 * @throws Exception
	 */
	Vest findVestById(Object id) throws Exception;
	
	
	
}
