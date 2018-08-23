package service;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import com.google.gson.Gson;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;

public class MongoDB implements ProfileDao{
	private MongoClient mongoClient;
	public void add(Profile pro)  {
		DBCollection collection = mongoConnect();
		BasicDBObject temp = makeDBObject(pro);
		DBObject profile = temp;
		collection.insert(profile);
//		return pro.toString() + "\n was added at DB: testtest2 Collection: Profiles";
	}
	public void remove(String key)  {
		DBCollection collection = mongoConnect();
		DBObject o = searchMongo(key);
		if (o == null){
			throw new IllegalArgumentException("Key: " + key + " was not found");
		}
		collection.remove(o);
	}
	public Profile retrieve(String key) {
		DBObject obj = searchMongo(key);  
		Hashtable<String, String> table = new Hashtable<String, String>();
		for (String aField: obj.keySet()) {
			table.put(aField, (String) obj.get(aField));
		}
		Profile result = new Profile(table.remove("_id"), table);
		return result;
	}
	public Profile modify(String key, Hashtable<String, String> info) {
		DBCollection collection = mongoConnect();
		DBObject orig = searchMongo(key);
		DBObject update = makeDBObject(new Profile(key, info));
		collection.findAndModify(orig, update);
		return toProfile(orig);
	}
	public Profile modify(String key, String field, String newValue)  {
		DBCollection collection = mongoConnect();
		DBObject update = searchMongo(key);
		DBObject orig = searchMongo(key);
		for (String aKey: update.keySet()) {
			if (aKey.equals(field)) {
				update.removeField(aKey);
				update.put(field, newValue);
				break;
			}
		}
		collection.findAndModify(orig, update);
		return toProfile(orig);
	}
	public Profile search(String field, String value)   {
		DBCollection collection = mongoConnect();
		DBCursor myCursor = collection.find().sort(new BasicDBObject("date",-1)).limit(10);
		List<DBObject> list = myCursor.toArray(); 
		String theKey = null;
		for (DBObject temp: list) {
			if (temp.containsField(field)) {
				if (temp.get(field).equals(value)) {
					theKey = temp.get("_id").toString();
					return retrieve(theKey);
				}
			}
		}
		throw new IllegalArgumentException("The field " + field + " was not found");
	}
	public List<Profile> listAll()   {
		DBCollection collection = mongoConnect();
		DBCursor myCursor = collection.find().sort(new BasicDBObject("date",-1)).limit(10);
		List<DBObject> listObj = myCursor.toArray(); 
		List<Profile> list = new Vector<Profile>();
		for (DBObject temp: listObj) {
			Profile prof = toProfile(temp);
			list.add(prof);
		}
		return list;
	}
	public String dropDB() {
		DB database = mongoClient.getDB("testtest2");
		mongoClient.dropDatabase(database.getName());
		mongoClient.close();
		return database.getName() + " has been dropped"; 
	}
	private DBObject searchMongo(String key) {
		DBCollection collection = mongoConnect();
		DBCursor myCursor = collection.find().sort(new BasicDBObject("date",-1)).limit(10);
		List<DBObject> list = myCursor.toArray(); 
		for (DBObject temp: list) {
			if ((temp.get("_id")).equals(key)) {
				return temp;
			}
		}
		System.out.println(key + " was not found");
		return null;
	}
	private Profile toProfile(DBObject obj) {
		Map<String, String> map = obj.toMap();
		String id = map.get("_id");
		map.remove("_id");
		Hashtable<String, String> info = new Hashtable<String, String>();
		for (String mapKey: map.keySet()) {
			info.put(mapKey, map.get(mapKey));
		}
		return new Profile(id, info);
	}
	private BasicDBObject makeDBObject(Profile pro) {
		BasicDBObject temp = new BasicDBObject("_id", pro.getKey());
		for (String aKey: pro.getInfo().keySet()) {
			temp.append(aKey, pro.getInfo().get(aKey));
		}
		return temp;
	}
	//Connect to Mongo Database and access Profiles collection
	public DBCollection mongoConnect() {
		try {
		mongoClient = new MongoClient();
		DB database = mongoClient.getDB("testtest2");
		DBCollection collection = database.getCollection("Profiles");
		return collection;} 
		catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}
}
