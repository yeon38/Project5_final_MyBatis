package com.example.board;

import com.example.board.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.http.HttpSession;

@Controller
//@RequestMapping(value = "/login")
public class LoginController {

    @Autowired
    UserServiceImp service;

    @RequestMapping(value = "login/login", method = RequestMethod.GET)
    public String login(){
        return "login";
    }

    @RequestMapping(value = "login/loginOk", method = RequestMethod.POST)
    public String loginCheck(HttpSession session, UserVO vo){
        String returnURL = "";
        if(session.getAttribute("login") != null) {
            session.removeAttribute("login");
        }

        UserVO loginvo = service.getUser(vo);
        if(loginvo != null) {
            System.out.println("success to login");
            session.setAttribute("login", loginvo);
            returnURL = "redirect:/board/list";
        } else {
            System.out.println("fail to login");
        }
        return returnURL;
    }

    @RequestMapping(value = "login/logout")
    public String logout (HttpSession session) {
        session.invalidate();
        return "redirect:/login/login";
    }

}
