package com.entity.vo;

import com.entity.KaoshikemuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 考试科目
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-02-07 19:45:23
 */
public class KaoshikemuVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 考试名称
	 */
	
	private String kaoshimingcheng;
		
	/**
	 * 考试时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date kaoshishijian;
				
	
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
	 * 设置：考试时间
	 */
	 
	public void setKaoshishijian(Date kaoshishijian) {
		this.kaoshishijian = kaoshishijian;
	}
	
	/**
	 * 获取：考试时间
	 */
	public Date getKaoshishijian() {
		return kaoshishijian;
	}
			
}
