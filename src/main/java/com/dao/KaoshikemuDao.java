package com.dao;

import com.entity.KaoshikemuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.KaoshikemuVO;
import com.entity.view.KaoshikemuView;


/**
 * 考试科目
 * 
 * @author 
 * @email 
 * @date 2021-02-07 19:45:23
 */
public interface KaoshikemuDao extends BaseMapper<KaoshikemuEntity> {
	
	List<KaoshikemuVO> selectListVO(@Param("ew") Wrapper<KaoshikemuEntity> wrapper);
	
	KaoshikemuVO selectVO(@Param("ew") Wrapper<KaoshikemuEntity> wrapper);
	
	List<KaoshikemuView> selectListView(@Param("ew") Wrapper<KaoshikemuEntity> wrapper);

	List<KaoshikemuView> selectListView(Pagination page,@Param("ew") Wrapper<KaoshikemuEntity> wrapper);
	
	KaoshikemuView selectView(@Param("ew") Wrapper<KaoshikemuEntity> wrapper);
	
}
