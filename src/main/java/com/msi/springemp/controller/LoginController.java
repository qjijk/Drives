package com.msi.springemp.controller;


import javax.servlet.http.HttpServletRequest;

import com.msi.springemp.dao.FileDao;
import com.msi.springemp.pojo.File;
import com.msi.springemp.service.IUserService;
import com.octo.captcha.service.image.ImageCaptchaService;
import com.msi.springemp.service.impl.CustomGenericManageableCaptchaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.msi.springemp.dao.UserDAO;
import com.msi.springemp.pojo.User;

import java.util.List;

@Controller
@SessionAttributes("username")
public class LoginController {
	
	@Autowired
	private IUserService userService;

	@Autowired
	private ImageCaptchaService imageCaptchaService;

	@Autowired
	private CustomGenericManageableCaptchaService customGenericManageableCaptchaService;
	
	@Autowired
	private UserDAO userDAO;

    @Autowired
	private FileDao fileDao;
	
	@RequestMapping("login")
	public ModelAndView login(HttpServletRequest request){
		ModelAndView mv = new ModelAndView("login");
		if ((request.getSession().getAttribute("name")) != null)
        {
            mv = new ModelAndView("main");
        }
		return mv;
	}
	@RequestMapping("upload")
	public ModelAndView upload(){
		ModelAndView mv = new ModelAndView("upload");
		return mv;
	}
	@RequestMapping("download")
	public ModelAndView download(){
		ModelAndView mv = new ModelAndView("download");
		return mv;
	}

    @RequestMapping("share")
    public ModelAndView share(){
        ModelAndView mv = new ModelAndView("share");
        return mv;
    }

	@RequestMapping("admin")
	public ModelAndView admin(HttpServletRequest request,String username,String password) throws Exception{
			ModelAndView mv = new ModelAndView("admin");
			return mv;
	}

    @RequestMapping("list")
    public ModelAndView list(HttpServletRequest request) throws Exception {
        List<File> ff;
        ModelAndView mv = new ModelAndView("list");
        Object o = request.getSession().getAttribute("name");
        ff =  fileDao.findByuser(o.toString());
        System.out.println(ff.size());
        System.out.println(o);
        request.getSession().setAttribute("list",ff);
        return mv;
    }

	

	@RequestMapping("register")
	public ModelAndView register(){
		ModelAndView mv = new ModelAndView("register");
		return mv;
	}

    @RequestMapping("anminmanage")
    public ModelAndView adminmanage(){
        ModelAndView mv = new ModelAndView("anminmanage");
        return mv;
    }
	
	@RequestMapping("userAdd")
	public ModelAndView doAdd(User user, String captcha, HttpServletRequest request) throws Exception {

		Boolean isResponseCorrect = imageCaptchaService.validateResponseForID(request.getSession().getId(), captcha);
		if (isResponseCorrect) {
			userDAO.addUser(user);
			customGenericManageableCaptchaService.removeCaptcha(request.getSession().getId());
			ModelAndView mv = new ModelAndView("main");
			return mv;
		} else {
			ModelAndView mv = new ModelAndView("register");
			return mv;
		}
	}

	@RequestMapping("anminmain")
	public ModelAndView index(HttpServletRequest request,String username,String password) throws Exception{

		if(username.equals("root") && password.equals("rootroot")) {
			ModelAndView mv = new ModelAndView("anminmanage");
			return mv;
		}else{
			ModelAndView mv = new ModelAndView("admin");
			mv.addObject("msg", "用户名或者密码错误");
			return mv;
		}
	}

    @RequestMapping("main")
    public ModelAndView adminindex(HttpServletRequest request,String username,String password) throws Exception{

        if(userService.login(username, password)) {
            ModelAndView mv = new ModelAndView("main");
            request.getSession().setAttribute("name", username);
            if(request.getSession().getAttribute("name") == null)
            {
                mv = new ModelAndView("login");
            }
            return mv;
        }else{
            ModelAndView mv = new ModelAndView("login");
            mv.addObject("msg", "用户名或者密码错误");
            return mv;
        }
    }
	
	@RequestMapping("/checkEmail")
	public @ResponseBody int checkEmail(String email) throws Exception {
		return userService.checkEmailExist(email);
	}

	@RequestMapping("/checkUser")
	public @ResponseBody int checkUser(String username) throws Exception {
		System.out.println(username+"*******************************");
		return userService.checkUserExist(username);
	}

	@RequestMapping("/checkCaptcha")
	public @ResponseBody int checkCaptcha(String captcha, HttpServletRequest request) throws Exception {
		Boolean isResponseCorrect = imageCaptchaService.validateResponseForID(request.getSession().getId(), captcha);

		if (isResponseCorrect == false) {
			return 0;
		} else {
			return 1;
		}
	}
}
