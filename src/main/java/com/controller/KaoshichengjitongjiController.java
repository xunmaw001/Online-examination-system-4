package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.KaoshichengjitongjiEntity;
import com.entity.view.KaoshichengjitongjiView;

import com.service.KaoshichengjitongjiService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 考试成绩统计
 * 后端接口
 * @author 
 * @email 
 * @date 2021-02-07 19:45:24
 */
@RestController
@RequestMapping("/kaoshichengjitongji")
public class KaoshichengjitongjiController {
    @Autowired
    private KaoshichengjitongjiService kaoshichengjitongjiService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,KaoshichengjitongjiEntity kaoshichengjitongji, HttpServletRequest request){

        EntityWrapper<KaoshichengjitongjiEntity> ew = new EntityWrapper<KaoshichengjitongjiEntity>();
    	PageUtils page = kaoshichengjitongjiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, kaoshichengjitongji), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,KaoshichengjitongjiEntity kaoshichengjitongji, HttpServletRequest request){
        EntityWrapper<KaoshichengjitongjiEntity> ew = new EntityWrapper<KaoshichengjitongjiEntity>();
    	PageUtils page = kaoshichengjitongjiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, kaoshichengjitongji), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( KaoshichengjitongjiEntity kaoshichengjitongji){
       	EntityWrapper<KaoshichengjitongjiEntity> ew = new EntityWrapper<KaoshichengjitongjiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( kaoshichengjitongji, "kaoshichengjitongji")); 
        return R.ok().put("data", kaoshichengjitongjiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(KaoshichengjitongjiEntity kaoshichengjitongji){
        EntityWrapper< KaoshichengjitongjiEntity> ew = new EntityWrapper< KaoshichengjitongjiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( kaoshichengjitongji, "kaoshichengjitongji")); 
		KaoshichengjitongjiView kaoshichengjitongjiView =  kaoshichengjitongjiService.selectView(ew);
		return R.ok("查询考试成绩统计成功").put("data", kaoshichengjitongjiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        KaoshichengjitongjiEntity kaoshichengjitongji = kaoshichengjitongjiService.selectById(id);
        return R.ok().put("data", kaoshichengjitongji);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        KaoshichengjitongjiEntity kaoshichengjitongji = kaoshichengjitongjiService.selectById(id);
        return R.ok().put("data", kaoshichengjitongji);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody KaoshichengjitongjiEntity kaoshichengjitongji, HttpServletRequest request){
    	kaoshichengjitongji.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(kaoshichengjitongji);

        kaoshichengjitongjiService.insert(kaoshichengjitongji);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody KaoshichengjitongjiEntity kaoshichengjitongji, HttpServletRequest request){
    	kaoshichengjitongji.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(kaoshichengjitongji);

        kaoshichengjitongjiService.insert(kaoshichengjitongji);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody KaoshichengjitongjiEntity kaoshichengjitongji, HttpServletRequest request){
        //ValidatorUtils.validateEntity(kaoshichengjitongji);
        kaoshichengjitongjiService.updateById(kaoshichengjitongji);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        kaoshichengjitongjiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<KaoshichengjitongjiEntity> wrapper = new EntityWrapper<KaoshichengjitongjiEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}


		int count = kaoshichengjitongjiService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	
	


}
