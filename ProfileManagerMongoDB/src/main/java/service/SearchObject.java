package service;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class SearchObject {
	private String field;
	private String value;
	public SearchObject() {
	}
	public SearchObject(String field, String value) {
		this.field = field;
		this.value = value;
	}
	public String getField() {
		return field;
	}
	@XmlElement
	public void setField(String field) {
		this.field = field;
	}
	public String getValue() {
		return value;
	}
	@XmlElement
	public void setValue(String value) {
		this.value = value;
	}
}