package com.dao;

import com.entity.KaoshichengjitongjiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.KaoshichengjitongjiVO;
import com.entity.view.KaoshichengjitongjiView;


/**
 * 考试成绩统计
 * 
 * @author 
 * @email 
 * @date 2021-02-07 19:45:24
 */
public interface KaoshichengjitongjiDao extends BaseMapper<KaoshichengjitongjiEntity> {
	
	List<KaoshichengjitongjiVO> selectListVO(@Param("ew") Wrapper<KaoshichengjitongjiEntity> wrapper);
	
	KaoshichengjitongjiVO selectVO(@Param("ew") Wrapper<KaoshichengjitongjiEntity> wrapper);
	
	List<KaoshichengjitongjiView> selectListView(@Param("ew") Wrapper<KaoshichengjitongjiEntity> wrapper);

	List<KaoshichengjitongjiView> selectListView(Pagination page,@Param("ew") Wrapper<KaoshichengjitongjiEntity> wrapper);
	
	KaoshichengjitongjiView selectView(@Param("ew") Wrapper<KaoshichengjitongjiEntity> wrapper);
	
}
