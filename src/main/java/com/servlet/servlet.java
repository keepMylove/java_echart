package com.servlet;

import com.alibaba.fastjson.JSONArray;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * author:@song;
 * version:1.0;
 */
@WebServlet("/a")
public class servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        sum sum1 = new sum();
        sum1.setName("Search Engine");
        sum1.setValue(1048);
        sum sum2 = new sum();
        sum2.setName("Direct");
        sum2.setValue(785);
        sum sum3 = new sum();
        sum3.setName("Email");
        sum3.setValue(1185);
        sum sum4 = new sum();
        sum4.setName("Union Ads");
        sum4.setValue(385);
        sum sum5 = new sum();
        sum5.setName("Video Ads");
        sum5.setValue(585);

        ArrayList<sum> sums = new ArrayList<>();
        sums.add(sum1);
        sums.add(sum2);
        sums.add(sum3);
        sums.add(sum4);
        sums.add(sum5);

        JSONArray jsonArray = (JSONArray) JSONArray.toJSON(sums);
        resp.getWriter().write(jsonArray.toString());
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        JSONArray jsonArray = (JSONArray) JSONArray.toJSON(new int[]{120,200,150,80,70,110,130});
        resp.getWriter().write(String.valueOf(jsonArray));
//        List<Integer> list  = new ArrayList();
//        list.add(120);
//        list.add(200);
//        list.add(100);
//        list.add(150);
//        list.add(80);
//        list.add(180);
//        list.add(280);
//        JSONArray jsonArray = (JSONArray) JSONArray.toJSON(list);
//        resp.getWriter().write(jsonArray.toString());


//        他[120,324,5,45，],这种结构传list 或者数组都行
    }
}
