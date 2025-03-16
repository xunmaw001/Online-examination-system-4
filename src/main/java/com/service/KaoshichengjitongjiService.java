package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.KaoshichengjitongjiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.KaoshichengjitongjiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.KaoshichengjitongjiView;


/**
 * 考试成绩统计
 *
 * @author 
 * @email 
 * @date 2021-02-07 19:45:24
 */
public interface KaoshichengjitongjiService extends IService<KaoshichengjitongjiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<KaoshichengjitongjiVO> selectListVO(Wrapper<KaoshichengjitongjiEntity> wrapper);
   	
   	KaoshichengjitongjiVO selectVO(@Param("ew") Wrapper<KaoshichengjitongjiEntity> wrapper);
   	
   	List<KaoshichengjitongjiView> selectListView(Wrapper<KaoshichengjitongjiEntity> wrapper);
   	
   	KaoshichengjitongjiView selectView(@Param("ew") Wrapper<KaoshichengjitongjiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<KaoshichengjitongjiEntity> wrapper);
   	
}

