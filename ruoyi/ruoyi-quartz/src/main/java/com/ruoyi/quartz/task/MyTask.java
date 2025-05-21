package com.ruoyi.quartz.task;
import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * 定时任务调度测试
 *
 * @author ruoyi
 **/
@Component
public class MyTask {
    public void showTime(){
        System.out.println("定时任务开始执行："+new Date());
    }
}
