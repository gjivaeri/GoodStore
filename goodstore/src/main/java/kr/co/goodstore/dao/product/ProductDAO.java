package kr.co.goodstore.dao.product;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.goodstore.dao.MyBatisFramework;
import kr.co.goodstore.domain.product.ProductDomain;
import kr.co.goodstore.domain.product.ProductListDomain;
import kr.co.goodstore.vo.product.ProductListVO;

@Component
public class ProductDAO {
	private String namespace="kr.co.goodstore.mapper.product.ProductMapper.";
	public List<ProductListDomain> productList(ProductListVO plVO){
	
			List<ProductListDomain> list=null;
			
			SqlSession ss=MyBatisFramework.getInstance().getMyBatisHandler();
			list=ss.selectList(namespace+"productList", plVO);
			
			if(ss!=null) {ss.close();}
			return list;
	}
	
	public ProductDomain productDetail(int item_id){
		
		ProductDomain result=null;
		SqlSession ss=MyBatisFramework.getInstance().getMyBatisHandler();
		result=ss.selectOne(namespace+"productDetail", item_id);
		
		if(ss!=null) {ss.close();}
		return result;
	}
}
