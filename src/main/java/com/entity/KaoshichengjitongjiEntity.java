package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 考试成绩统计
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-02-07 19:45:24
 */
@TableName("kaoshichengjitongji")
public class KaoshichengjitongjiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public KaoshichengjitongjiEntity() {
		
	}
	
	public KaoshichengjitongjiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 科目编号
	 */
					
	private String kemubianhao;
	
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
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：科目编号
	 */
	public void setKemubianhao(String kemubianhao) {
		this.kemubianhao = kemubianhao;
	}
	/**
	 * 获取：科目编号
	 */
	public String getKemubianhao() {
		return kemubianhao;
	}
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
