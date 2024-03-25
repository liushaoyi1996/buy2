package com.buy.controller;

import com.buy.entity.car;
import com.buy.service.buyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/cl")
public class BuyController {
    @Autowired
    buyService buyService;

    @RequestMapping("/dl")
    @ResponseBody
    public  String admin(String name,String pwd){
        Map<String,String> map=new HashMap<String,String>();
        map.put("name",name);
        map.put("pwd",pwd);
        int i=buyService.dl(map);
        if(i==1){
            return "Y";
        }
        return "N";
    }
    @RequestMapping("/zhuce")
    @ResponseBody
    public String zhuce(String name,String pwd){

        Map<String,String> map=new HashMap();
        map.put("name",name);
        map.put("pwd",pwd);
        int i=buyService.zhuce(map);
        if(i==1){
            return "Y";
        }
        return "N";

    }

    @RequestMapping("/addsp")
    @ResponseBody
    public  String add(String name,String money,String sum){
        Map<String,String> map=new HashMap<String,String>();
        map.put("name",name);
        map.put("money",money);
        map.put("sum",sum);
        int i=buyService.addsp(map);
        if(i==1){
            return "Y";
        }
        return "N";
    }

    @RequestMapping("/upsp")
    @ResponseBody
    public  String upsp(String name1,String name2,String money,String sum){
        Map<String,String> map=new HashMap<String,String>();
        map.put("name1",name1);
        map.put("name2",name2);
        map.put("money",money);
        map.put("sum",sum);
        int i=buyService.upm(map);
        if(i==1){
            return "Y";
        }
        return "N";
    }

    @RequestMapping("/Se")
    public String se(String xm,Map map){

        List<car> list=buyService.se(xm);
        map.put("list",list);
        return "/page/xy.jsp";
    }

    @RequestMapping("/de")
    @ResponseBody
    public  String de(String name){
        Map<String,String> map=new HashMap<String,String>();
        map.put("name",name);
        int i=buyService.de(map);
        if(i==1){
            return "Y";
        }
        return "N";
    }

}

