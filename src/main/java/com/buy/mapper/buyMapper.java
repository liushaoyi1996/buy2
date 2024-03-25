package com.buy.mapper;

import com.buy.entity.car;

import java.util.List;
import java.util.Map;

public interface buyMapper {
    public int dl(Map map);
    public int zhuce(Map map);
    public List<car> se(String xm);
    public int addsp(Map map);
    public int upm(Map map);
    public int de(Map map);
}
