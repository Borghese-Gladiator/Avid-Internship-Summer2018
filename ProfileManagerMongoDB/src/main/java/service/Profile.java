package service;
import java.util.Hashtable;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import com.google.gson.Gson;

@XmlRootElement
public class Profile {
	private String key;
	private Hashtable<String, String> info;
	public Profile() {}
	public Profile(String aKey, Hashtable<String, String> anInfo )
	{
		key = aKey;
		info = anInfo;
	}
	@Override
	public String toString()	{
		String result = "Key: " + key + '\n';
		if (info != null) {
			for(String aKey: info.keySet()){
				result += "Field: " + aKey + '\n';
				result += "Value: " + info.get(aKey);	
			}
		}
		return result;
	}
	public String modify(String field, String newValue) {
		String msg = "Field: " + field + " was not found";
		for (String aKey: info.keySet()) {
			if (field.equals(aKey)) {
				msg += "Old Value: " + info.replace(aKey, newValue) + '\n';
				msg += "New Value: " + newValue + '\n';
				break;
			}
		}
		return msg;
	}
	public String toJson() {
		Gson gson = new Gson();
		return gson.toJson(this);
	}
	public Hashtable<String, String> getInfo() {
		return info;
	}
	@XmlElement 
	public void setKey(String key) {
		this.key = key;
	}
	@XmlElement
	public void setInfo(Hashtable<String, String> info) {
		this.info = info;
	}
	public String getKey() {
		return key;
	}
	
}
