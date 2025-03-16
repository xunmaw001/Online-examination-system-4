package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.KaoshikemuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.KaoshikemuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.KaoshikemuView;


/**
 * 考试科目
 *
 * @author 
 * @email 
 * @date 2021-02-07 19:45:23
 */
public interface KaoshikemuService extends IService<KaoshikemuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<KaoshikemuVO> selectListVO(Wrapper<KaoshikemuEntity> wrapper);
   	
   	KaoshikemuVO selectVO(@Param("ew") Wrapper<KaoshikemuEntity> wrapper);
   	
   	List<KaoshikemuView> selectListView(Wrapper<KaoshikemuEntity> wrapper);
   	
   	KaoshikemuView selectView(@Param("ew") Wrapper<KaoshikemuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<KaoshikemuEntity> wrapper);
   	
}

