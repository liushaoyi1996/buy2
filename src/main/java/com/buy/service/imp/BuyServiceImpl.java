package com.buy.service.imp;

import com.buy.entity.car;
import com.buy.mapper.buyMapper;
import com.buy.service.buyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service
public class BuyServiceImpl implements buyService {
    @Autowired
    buyMapper buyMapper;

    @Override
    public int dl(Map map) {
        return buyMapper.dl(map);
    }

    @Override
    public int zhuce(Map map) {
        return buyMapper.zhuce(map);
    }


    @Override
    public List<car> se(String xm) {
        return buyMapper.se(xm);
    }

    @Override
    public int addsp(Map map) {
        return buyMapper.addsp(map);
    }

    @Override
    public int upm(Map map) {
        return buyMapper.upm(map);
    }

    @Override
    public int de(Map map) {
        return buyMapper.de(map);
    }


}
