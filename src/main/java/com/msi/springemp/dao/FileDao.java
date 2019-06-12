package com.msi.springemp.dao;

import com.msi.springemp.pojo.File;

public interface FileDao {

    public File findByuser(String usernames) throws Exception;

    public File getAllFile() throws Exception;

    public void addFile(File file) throws Exception;

}
