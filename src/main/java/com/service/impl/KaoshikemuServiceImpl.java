package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.KaoshikemuDao;
import com.entity.KaoshikemuEntity;
import com.service.KaoshikemuService;
import com.entity.vo.KaoshikemuVO;
import com.entity.view.KaoshikemuView;

@Service("kaoshikemuService")
public class KaoshikemuServiceImpl extends ServiceImpl<KaoshikemuDao, KaoshikemuEntity> implements KaoshikemuService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<KaoshikemuEntity> page = this.selectPage(
                new Query<KaoshikemuEntity>(params).getPage(),
                new EntityWrapper<KaoshikemuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<KaoshikemuEntity> wrapper) {
		  Page<KaoshikemuView> page =new Query<KaoshikemuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<KaoshikemuVO> selectListVO(Wrapper<KaoshikemuEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public KaoshikemuVO selectVO(Wrapper<KaoshikemuEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<KaoshikemuView> selectListView(Wrapper<KaoshikemuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public KaoshikemuView selectView(Wrapper<KaoshikemuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
