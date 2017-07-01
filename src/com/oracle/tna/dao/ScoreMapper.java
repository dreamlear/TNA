package com.oracle.tna.dao;

import java.util.List;

import com.oracle.tna.admin.controller.ScoreUser;
import com.oracle.tna.domain.Item;
import com.oracle.tna.domain.Score;



//写对应的接口，接口里写对应的方法
public interface ScoreMapper {
	
	public List<Score> selectByuid(int uid);
	public void insert(Score score);
	
	//管理员查询所有考试记录
	public List<ScoreUser> selectAll();
	//得到数据行数
	public int getRecordNum();
	
	//得到平均成绩
	public float getAvgScore();
	
	
}
