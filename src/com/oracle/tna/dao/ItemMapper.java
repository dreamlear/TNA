package com.oracle.tna.dao;

import java.util.List;

import com.oracle.tna.domain.Item;





//写对应的接口，接口里写对应的方法
public interface ItemMapper {

	//查询
	public  List<Item> select();
	public  List<Item> selectBysearch(String search);
	
	public void updataQuestionbyId(Item item);
	public void updataOptionAbyId(Item item);
	public void updataOptionBbyId(Item item);
	public void updataOptionCbyId(Item item);
	public void updataOptionDbyId(Item item);
	public void updataAnswerbyId(Item item);
	public void deletebyId(int qid);
	public void changeId(int old, int cur);
	public void addItem(Item item);
	
}
