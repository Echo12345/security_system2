package cn.com.security_system.dao;

import java.util.List;

import cn.com.security_system.pojo.Collection;

public interface CollectionDao {
	/**
	 * �����û�id��ȡ�ղ���Ϣ
	 * @param userId
	 * @return
	 */
	public List<Collection> getCollectionByUId(long userId);
	/**
	 * ����ղ�
	 * @param collection
	 * @return
	 */
	public boolean addCollection(Collection collection);
	/**
	 * ɾ���ղ�
	 * @param collection
	 * @return
	 */
	public boolean deleteCollection(Collection collection);
	
}
