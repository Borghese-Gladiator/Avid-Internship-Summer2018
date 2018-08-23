package service;
import java.util.Hashtable;
import java.util.List;

public interface ProfileDao {
	public void add(Profile profile);
	public void remove(String key);
	public Profile retrieve(String key);
	public Profile modify(String key, Hashtable<String, String> info);
	public Profile modify(String key, String field, String newValue);
	public List<Profile> listAll();
	public Profile search(String field, String value);
}