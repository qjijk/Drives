package com.msi.springemp.controller;

import com.msi.springemp.dao.FileDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.*;
import java.net.URLEncoder;
import java.util.Calendar;
import java.util.Date;


@Controller
@RequestMapping("file")
public class Updownload {
    @Autowired
    private FileDao fileDao;

    @RequestMapping(value="/upload",method=RequestMethod.POST)
    @ResponseBody
    public String upload(MultipartFile file,HttpServletRequest request) throws Exception {



        String path = request.getSession().getServletContext().getRealPath("upload");
        String fileName = file.getOriginalFilename();
        //fileName = URLEncoder.encode(fileName,"UTF-8");
        long a = Calendar.getInstance().getTimeInMillis();
        System.out.println(a);
        com.msi.springemp.pojo.File files = new com.msi.springemp.pojo.File(request.getSession().getAttribute("name").toString(),fileName,a) ;
        fileDao.addFile(files);
        System.out.println(path);
        File dir = new File(path,fileName);
        if(!dir.exists()){
            dir.mkdirs();
        }

        file.transferTo(dir);
        return fileName;
    }

    @RequestMapping("/down")
    public void down(HttpServletRequest request,HttpServletResponse response) throws Exception{


        String fileName = request.getSession().getServletContext().getRealPath("upload")+"/44444.sketch";
        InputStream bis = new BufferedInputStream(new FileInputStream(new File(fileName)));
        String filename = "下载文件.jpg";
        filename = URLEncoder.encode(filename,"UTF-8");
        response.addHeader("Content-Disposition", "attachment;filename=" + filename);
        response.setContentType("multipart/form-data");
        BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());
        int len = 0;
        while((len = bis.read()) != -1){
            out.write(len);
            out.flush();
        }
        out.close();
    }
}