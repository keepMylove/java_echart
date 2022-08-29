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

@WebServlet("/test")
public class AServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<User> list=new ArrayList<User>();
        User user = new User();
        user.setName("Email");
        user.setType("line");
        user.setStack("Total");
        user.getData().add(220);
        user.getData().add(182);
        user.getData().add(191);
        user.getData().add(234);
        user.getData().add(290);
        user.getData().add(330);
        user.getData().add(310);

        User user1 = new User();
        user1.setName("Union Ads");
        user1.setType("line");
        user1.setStack("Total");
        user1.getData().add(220);
        user1.getData().add(182);
        user1.getData().add(191);
        user1.getData().add(234);
        user1.getData().add(290);
        user1.getData().add(330);
        user1.getData().add(310);

        User user2 = new User();
        user2.setName("Video Ads");
        user2.setType("line");
        user2.setStack("Total");
        user2.getData().add(150);
        user2.getData().add(232);
        user2.getData().add(201);
        user2.getData().add(154);
        user2.getData().add(190);
        user2.getData().add(330);
        user2.getData().add(410);
        list.add(user);
        list.add(user1);
        list.add(user2);
        JSONArray jsonArray = (JSONArray) JSONArray.toJSON(list);
        resp.getWriter().write(jsonArray.toString());

    }
}
