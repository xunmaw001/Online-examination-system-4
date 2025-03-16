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


import com.dao.KaoshichengjitongjiDao;
import com.entity.KaoshichengjitongjiEntity;
import com.service.KaoshichengjitongjiService;
import com.entity.vo.KaoshichengjitongjiVO;
import com.entity.view.KaoshichengjitongjiView;

@Service("kaoshichengjitongjiService")
public class KaoshichengjitongjiServiceImpl extends ServiceImpl<KaoshichengjitongjiDao, KaoshichengjitongjiEntity> implements KaoshichengjitongjiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<KaoshichengjitongjiEntity> page = this.selectPage(
                new Query<KaoshichengjitongjiEntity>(params).getPage(),
                new EntityWrapper<KaoshichengjitongjiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<KaoshichengjitongjiEntity> wrapper) {
		  Page<KaoshichengjitongjiView> page =new Query<KaoshichengjitongjiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<KaoshichengjitongjiVO> selectListVO(Wrapper<KaoshichengjitongjiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public KaoshichengjitongjiVO selectVO(Wrapper<KaoshichengjitongjiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<KaoshichengjitongjiView> selectListView(Wrapper<KaoshichengjitongjiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public KaoshichengjitongjiView selectView(Wrapper<KaoshichengjitongjiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
