package cn.com.security_system.pojo;

import java.io.Serializable;

/**
 * ��Ʊʵ����
 * @author Administrator
 *
 */
public class Shares implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -7812033657614755941L;
	private long id;
	private long number;
	private String name;
	private String category;
	private String module;
	private String service;
	private String subService;
	private String coreProduct;
	private String positiveFactors;//��������
	private String nagetiveFactors;//��������
	private String positiveMonth;//�����·�
	public String getPositiveFactors() {
		return positiveFactors;
	}
	public void setPositiveFactors(String positiveFactors) {
		this.positiveFactors = positiveFactors;
	}
	public String getNagetiveFactors() {
		return nagetiveFactors;
	}
	public void setNagetiveFactors(String nagetiveFactors) {
		this.nagetiveFactors = nagetiveFactors;
	}
	public String getPositiveMonth() {
		return positiveMonth;
	}
	public void setPositiveMonth(String positivieMonth) {
		this.positiveMonth = positivieMonth;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getNumber() {
		return number;
	}
	public void setNumber(long number) {
		this.number = number;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getModule() {
		return module;
	}
	public void setModule(String module) {
		this.module = module;
	}
	public String getService() {
		return service;
	}
	public void setService(String service) {
		this.service = service;
	}
	public String getSubService() {
		return subService;
	}
	public void setSubService(String subService) {
		this.subService = subService;
	}
	public String getCoreProduct() {
		return coreProduct;
	}
	public void setCoreProduct(String coreProduct) {
		this.coreProduct = coreProduct;
	}
}
