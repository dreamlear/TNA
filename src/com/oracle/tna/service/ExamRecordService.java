package com.oracle.tna.service;

import java.util.List;

import mybatis.mybatis;

import org.apache.ibatis.session.SqlSession;

import com.oracle.tna.admin.controller.ScoreUser;
import com.oracle.tna.dao.ScoreMapper;
import com.oracle.tna.domain.Score;

public class ExamRecordService {
	private static ExamRecordService examRecordService = new ExamRecordService();

	private ExamRecordService(){};

	public static ExamRecordService getExamRecordService(){
		return examRecordService;
	}

	public List<Score> getScore(int uid){
		SqlSession session = mybatis.getSqlSession(true);
		ScoreMapper scoreMapper = session.getMapper(ScoreMapper.class);
		
		List<Score> score = scoreMapper.selectByuid(uid);
		return score;
	}
	
	public List<ScoreUser> getAllScore(){
		SqlSession session = mybatis.getSqlSession(true);
		ScoreMapper scoreMapper = session.getMapper(ScoreMapper.class);
		
		List<ScoreUser> scoreList = scoreMapper.selectAll();
		return scoreList;
	}
	public int getRecordNum(){
		SqlSession session = mybatis.getSqlSession(true);
		ScoreMapper scoreMapper = session.getMapper(ScoreMapper.class);
		
		int count = scoreMapper.getRecordNum();
		return count;
	}
	public float getAvgScore(){
		SqlSession session = mybatis.getSqlSession(true);
		ScoreMapper scoreMapper = session.getMapper(ScoreMapper.class);
		
		float avg = scoreMapper.getAvgScore();
		return avg;
	}
	
}
