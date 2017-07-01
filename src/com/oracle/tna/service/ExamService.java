package com.oracle.tna.service;

import java.util.List;

import mybatis.mybatis;

import org.apache.ibatis.session.SqlSession;

import com.oracle.tna.dao.ItemMapper;
import com.oracle.tna.domain.Item;
import com.oracle.tna.domain.Score;

public class ExamService {
	private static ExamService examService = new ExamService();

	private ExamService(){};

	public static ExamService getExamService(){
		return examService;
	}

	public List<Item> getItems(){
		SqlSession session = mybatis.getSqlSession(true);
		ItemMapper itemMapper = session.getMapper(ItemMapper.class);
		
		List<Item> exam = itemMapper.select();
		return exam;
	}
	
	public void updataQuestionbyId(Item item){
		SqlSession session = mybatis.getSqlSession(true);
		ItemMapper itemMapper = session.getMapper(ItemMapper.class);
		itemMapper.updataQuestionbyId(item);
	}
	public void updataOptionAbyId(Item item){
		SqlSession session = mybatis.getSqlSession(true);
		ItemMapper itemMapper = session.getMapper(ItemMapper.class);
		itemMapper.updataOptionAbyId(item);
	}
	public void updataOptionBbyId(Item item){
		SqlSession session = mybatis.getSqlSession(true);
		ItemMapper itemMapper = session.getMapper(ItemMapper.class);
		itemMapper.updataOptionBbyId(item);
	}
	public void updataOptionCbyId(Item item){
		SqlSession session = mybatis.getSqlSession(true);
		ItemMapper itemMapper = session.getMapper(ItemMapper.class);
		itemMapper.updataOptionCbyId(item);
	}
	public void updataOptionDbyId(Item item){
		SqlSession session = mybatis.getSqlSession(true);
		ItemMapper itemMapper = session.getMapper(ItemMapper.class);
		itemMapper.updataOptionDbyId(item);
	}
	
	public void updataAnswerbyId(Item item){
		SqlSession session = mybatis.getSqlSession(true);
		ItemMapper itemMapper = session.getMapper(ItemMapper.class);
		itemMapper.updataAnswerbyId(item);
	}
	
	public void deletebyId(int qid){
		SqlSession session = mybatis.getSqlSession(true);
		ItemMapper itemMapper = session.getMapper(ItemMapper.class);
		itemMapper.deletebyId(qid);
	}
	
	public void changeId(int old, int cur){
		SqlSession session = mybatis.getSqlSession(true);
		ItemMapper itemMapper = session.getMapper(ItemMapper.class);
		itemMapper.changeId(old, cur);
	}
	
	public void addItem(Item item){
		SqlSession session = mybatis.getSqlSession(true);
		ItemMapper itemMapper = session.getMapper(ItemMapper.class);
		
		itemMapper.addItem(item);
		
	}
	
	
	
	public List<Item> getItemsBysearch(String search){
		SqlSession session = mybatis.getSqlSession(true);
		ItemMapper itemMapper = session.getMapper(ItemMapper.class);
		search = "%" + search +"%";
		List<Item> exam = itemMapper.selectBysearch(search);
		return exam;
		
	}

}
