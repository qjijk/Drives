package com.msi.springemp.pojo;

public class File {
    private Integer id;
    private String usernames;
    private String realname;
    private long timename;

    public File(String usernames, String realname, long timename)
    {
        this.realname = realname;
        this.usernames = usernames;
        this.timename = timename;
    }

    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getUsernames() {
        return usernames;
    }
    public void setUsernames(String usernames) {
        this.usernames = usernames;
    }
    public String getRealname() {
        return realname;
    }
    public void setRealname(String realname) {
        this.realname = realname;
    }
    public long getTimename() {
        return timename;
    }
    public void setTimename(Integer timename) {
        this.timename = timename;
    }
}

