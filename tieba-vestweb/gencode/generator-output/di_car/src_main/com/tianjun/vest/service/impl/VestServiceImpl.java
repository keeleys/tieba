package com.tianjun.vest.service.impl;

import org.springframework.stereotype.Service;
import org.springrain.frame.service.IBaseService;
import org.springrain.demo.service.BaseDemoServiceImpl;
import com.tianjun.vest.entity.Vest;
import com.tianjun.vest.service.IVestService;
import java.util.List;
import java.io.File;
import org.springrain.frame.entity.IBaseEntity;
import org.springrain.frame.util.Page;
import org.springrain.frame.util.Finder;


/**
 * TODO 在此加入类描述
 * @copyright {@link 9iu.org}
 * @author springrain<Auto generate>
 * @version  2014-03-23 14:50:52
 * @see com.tianjun.vest.service.impl.Vest
 */
@Service("vestService")
public class VestServiceImpl extends BaseDemoServiceImpl implements IVestService {

   
    @Override
	public String  save(Object entity ) throws Exception{
	      Vest vest=(Vest) entity;
	       return super.save(vest).toString();
	}

    @Override
	public String  saveorupdate(Object entity ) throws Exception{
	      Vest vest=(Vest) entity;
		 return super.saveorupdate(vest).toString();
	}
	
	@Override
    public Integer update(IBaseEntity entity ) throws Exception{
	 Vest vest=(Vest) entity;
	return super.update(vest);
    }
    @Override
	public Vest findVestById(Object id) throws Exception{
	 return super.findById(id,Vest.class);
	}
	
/**
 * 列表查询,每个service都会重载,要把sql语句封装到service中,Finder只是最后的方案
 * @param finder
 * @param page
 * @param clazz
 * @param o
 * @return
 * @throws Exception
 */
        @Override
    public <T> List<T> findListDataByFinder(Finder finder, Page page, Class<T> clazz,
			Object o) throws Exception{
			 return super.findListDataByFinder(finder,page,clazz,o);
			}
	/**
	 * 根据查询列表的宏,导出Excel
	 * @param finder 为空则只查询 clazz表
	 * @param ftlurl 类表的模版宏
	 * @param page 分页对象
	 * @param clazz 要查询的对象
	 * @param o  querybean
	 * @return
	 * @throws Exception
	 */
		@Override
	public <T> File findDataExportExcel(Finder finder,String ftlurl, Page page,
			Class<T> clazz, Object o)
			throws Exception {
			 return super.findDataExportExcel(finder,ftlurl,page,clazz,o);
		}

}
