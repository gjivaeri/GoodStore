package kr.co.goodstore.dao.main;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.goodstore.dao.MyBatisFramework;
import kr.co.goodstore.domain.main.BlogDomain;
import kr.co.goodstore.domain.main.CategoryDomain;
import kr.co.goodstore.domain.main.ItemDomain;

@Component
public class MainPageDAO {
	
	//category
	public List<CategoryDomain> selectMainCatogory()throws PersistenceException{
		List<CategoryDomain> list = null;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		list = ss.selectList("searchMainCategory");
		
		if(ss != null) {ss.close();}
		
		return list;
	}//selectCatogory
	
	//주문많은 순 Item
	public List<ItemDomain> selectBestItem()throws PersistenceException{
		List<ItemDomain> list = null;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		list = ss.selectList("searchBestItem");
		
		if(ss != null) {ss.close();}
		
		return list;
	}//selectBestItem
	
	//별점 순 Item
	public List<ItemDomain> selectItemStar()throws PersistenceException{
		List<ItemDomain> list = null;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		list = ss.selectList("searchItemStar");
		
		if(ss != null) {ss.close();}
		
		return list;
	}//selectItemStar
	
	//블로그 보여주기
	public List<BlogDomain> selectMainCBlog()throws PersistenceException{
		List<BlogDomain> list = null;
		
		SqlSession ss = MyBatisFramework.getInstance().getMyBatisHandler();
		
		list = ss.selectList("searchMainCBlog");
		
		if(ss != null) {ss.close();}
		
		return list;
	}//selectMainCBlog

}
