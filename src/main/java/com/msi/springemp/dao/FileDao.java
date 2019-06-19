package com.msi.springemp.dao;

import com.msi.springemp.pojo.File;

import java.util.List;

public interface FileDao {

    public List<File> findByuser(String usernames) throws Exception;

    public List<File> getAllFile() throws Exception;

    public File findBytimename(String timename) throws Exception;

    public void deleteFile(String timename) throws Exception;

    public void updateFile(String realname, String timname) throws Exception;

    public void addFile(File file) throws Exception;



}
