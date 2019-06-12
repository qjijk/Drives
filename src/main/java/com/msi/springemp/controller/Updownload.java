package com.msi.springemp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.net.URLEncoder;

/**
 * 下载  测试
 * @author 王一土
 *
 */
@Controller
@RequestMapping("file")
public class Updownload {

    @RequestMapping(value="/upload",method=RequestMethod.POST)
    @ResponseBody
    public String upload(MultipartFile file,HttpServletRequest request) throws IOException{
        String path = request.getSession().getServletContext().getRealPath("upload");
        String fileName = file.getOriginalFilename();
        System.out.println(path);
        File dir = new File(path,fileName);
        if(!dir.exists()){
            dir.mkdirs();
        }

        file.transferTo(dir);
        return fileName;
    }

    @RequestMapping("/down")
    public void down(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception{
        String useranme=(String) session.getAttribute("username");

        String fileName = request.getSession().getServletContext().getRealPath("upload")+"/44444.sketch";
        InputStream bis = new BufferedInputStream(new FileInputStream(new File(fileName)));
        String filename = "下载文件.jpg";
        filename = URLEncoder.encode(filename,"UTF-8");
        response.addHeader("Content-Disposition", "attachment;filename=" + filename);
        response.setContentType("multipart/form-data");
        BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());
        int len = 0;
        if((len = bis.read()) != -1){
            out.write(len);
            out.flush();
            response.sendRedirect("success");
        }
        else{
            response.sendRedirect("fail");
        }
        out.close();
    }
}