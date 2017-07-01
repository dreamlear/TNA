package com.oracle.tna.service;

import java.util.List;

import mybatis.mybatis;

import org.apache.ibatis.session.SqlSession;

import com.oracle.tna.dao.ScoreMapper;
import com.oracle.tna.domain.Score;

public class ExamResultService {
	private static ExamResultService examResultService = new ExamResultService();

	private ExamResultService(){};

	public static ExamResultService getExamResultService(){
		return examResultService;
	}

	public void InsertScore(Score score){
		SqlSession session = mybatis.getSqlSession(true);
		ScoreMapper scoreMapper = session.getMapper(ScoreMapper.class);
		
		scoreMapper.insert(score);
		
	}

}
