package com.jemeisha;

import com.jemeisha.proxy.Logic;
import com.jemeisha.proxy.LogicService;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Util {
    public static final String ADMIN_COOKIE= "admin-cookie";
    public static final String DRIVER_COOKIE= "driver-cookie";
    public static final String CUSTOMER_COOKIE= "customer-cookie";
    public static Cookie createAdminCookie(String token){
        Cookie cookie = new Cookie(ADMIN_COOKIE,token);
        cookie.setMaxAge(2592000);//log-off time(1 month)
        cookie.setHttpOnly(true);
        cookie.setPath("/");
        return cookie;
    }

    public static Cookie createDriverCookie(String token){
        Cookie cookie = new Cookie(DRIVER_COOKIE,token);
        cookie.setMaxAge(2592000);//log-off time(1 month)
        cookie.setHttpOnly(true);
        cookie.setPath("/");
        return cookie;
    }

    public static Cookie createCustomerCookie(String token){
        Cookie cookie = new Cookie(CUSTOMER_COOKIE,token);
        cookie.setMaxAge(2592000);//log-off time(1 month)
        cookie.setHttpOnly(true);
        cookie.setPath("/");
        return cookie;

    }

    public static void clearAdminCookie(HttpServletResponse response){
        Cookie cookie=new Cookie(ADMIN_COOKIE,"");
        cookie.setMaxAge(-1);
        response.addCookie(cookie);

    }

    public static void clearDriverCookie(HttpServletResponse response){
        Cookie cookie=new Cookie(DRIVER_COOKIE,"");
        cookie.setMaxAge(-1);
        response.addCookie(cookie);

    }

    public static void clearCustomerCookie(HttpServletResponse response){
        Cookie cookie=new Cookie(CUSTOMER_COOKIE,"");
        cookie.setMaxAge(-1);
        response.addCookie(cookie);

    }
    public static boolean isCustomerLoggedIn(HttpServletRequest request){

        LogicService logicService= new LogicService();
        Logic logic= logicService.getLogicPort();

        Cookie[] cookies= request.getCookies(); //get all cookies

        Cookie loginCookie=null;
        for(int x=0;x<cookies.length;x++){
            if(cookies[x].getName().equals(CUSTOMER_COOKIE)){
                loginCookie=cookies[x];
                break;
            }
        }

        boolean isLoggedIn= false;
        if(loginCookie!=null){
            isLoggedIn=logic.isLoggedIn(loginCookie.getValue());
        }
        return isLoggedIn;
    }

    public static boolean isDriverLoggedIn(HttpServletRequest request){

        LogicService logicService= new LogicService();
        Logic logic= logicService.getLogicPort();

        Cookie[] cookies= request.getCookies(); //get all cookies

        Cookie loginCookie=null;
        for(int x=0;x<cookies.length;x++){
            if(cookies[x].getName().equals(DRIVER_COOKIE)){
                loginCookie=cookies[x];
                break;
            }
        }

        boolean isLoggedIn= false;
        if(loginCookie!=null){
            isLoggedIn=logic.isDriverLoggedIn(loginCookie.getValue());
        }
        return isLoggedIn;
    }

    public static boolean isAdminLoggedIn(HttpServletRequest request){

        LogicService logicService= new LogicService();
        Logic logic= logicService.getLogicPort();

        Cookie[] cookies= request.getCookies(); //get all cookies

        Cookie loginCookie=null;
        for(int x=0;x<cookies.length;x++){
            if(cookies[x].getName().equals(ADMIN_COOKIE)){
                loginCookie=cookies[x];
                break;
            }
        }

        boolean isLoggedIn= false;
        if(loginCookie!=null){
            isLoggedIn=logic.isAdminLoggedIn(loginCookie.getValue());
        }
        return isLoggedIn;
    }
}
