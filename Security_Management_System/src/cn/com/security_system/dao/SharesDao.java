package cn.com.security_system.dao;

import java.util.List;

import cn.com.security_system.pojo.Shares;

public interface SharesDao {
	/**
	 * ��ȡ���еĹ�Ʊ�б�
	 * @return
	 */
	public List<Shares> getAllShares(String type,String queryStr);
	/**
	 * ����id��ѯ��Ʊ��ϸ��Ϣ
	 * @param id
	 * @return
	 */
	public Shares getSharesById(long id);
	/**
	 * �޸Ĺ�Ʊ��Ϣ
	 * @param id
	 * @return
	 */
	public boolean updateShares(Shares shares);
	/**
	 * ɾ����Ʊ��Ϣ
	 * @param id
	 * @return
	 */
	public boolean deleteShares(long id);
	/**
	 * ��ӹ�Ʊ��Ϣ
	 * @param shares
	 * @return
	 */
	public boolean addShares(Shares shares);
	public List<Shares> getByIds(List<Long> ids);

}
