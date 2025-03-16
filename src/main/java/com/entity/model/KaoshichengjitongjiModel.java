package com.entity.model;

import com.entity.KaoshichengjitongjiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 考试成绩统计
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2021-02-07 19:45:24
 */
public class KaoshichengjitongjiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 考试名称
	 */
	
	private String kaoshimingcheng;
		
	/**
	 * 最高分
	 */
	
	private String zuigaofen;
		
	/**
	 * 最低分
	 */
	
	private String zuidifen;
		
	/**
	 * 平均分
	 */
	
	private String pingjunfen;
				
	
	/**
	 * 设置：考试名称
	 */
	 
	public void setKaoshimingcheng(String kaoshimingcheng) {
		this.kaoshimingcheng = kaoshimingcheng;
	}
	
	/**
	 * 获取：考试名称
	 */
	public String getKaoshimingcheng() {
		return kaoshimingcheng;
	}
				
	
	/**
	 * 设置：最高分
	 */
	 
	public void setZuigaofen(String zuigaofen) {
		this.zuigaofen = zuigaofen;
	}
	
	/**
	 * 获取：最高分
	 */
	public String getZuigaofen() {
		return zuigaofen;
	}
				
	
	/**
	 * 设置：最低分
	 */
	 
	public void setZuidifen(String zuidifen) {
		this.zuidifen = zuidifen;
	}
	
	/**
	 * 获取：最低分
	 */
	public String getZuidifen() {
		return zuidifen;
	}
				
	
	/**
	 * 设置：平均分
	 */
	 
	public void setPingjunfen(String pingjunfen) {
		this.pingjunfen = pingjunfen;
	}
	
	/**
	 * 获取：平均分
	 */
	public String getPingjunfen() {
		return pingjunfen;
	}
			
}
