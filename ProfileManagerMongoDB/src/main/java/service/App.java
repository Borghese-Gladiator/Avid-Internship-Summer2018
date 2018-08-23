package service;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import com.google.gson.Gson;
import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;

public class App {
	private static String[] keys = {"One", "Two", "Three"};
	
	public static void main(String[] args) throws Exception {
		MongoDB mon = new MongoDB();
		
		
		
		// TODO Auto-generated method stub
		
		//List<Hashtable<String,String>> infoList
		//  = new ArrayList<Hashtable<String,String>>();
		
		Hashtable<String, String> info1 = new Hashtable<String, String>();
		info1.put("First_Name" , "Joe");
		//infoList.add(info1);
		Hashtable<String, String> info2 = new Hashtable<String, String>();
		info2.put("Random_Name" , "Timothy");
		Hashtable<String, String> info3 = new Hashtable<String, String>();
		info3.put("Record: " , "90");
		info3.put("Average", "70");
		
		Profile pro = new Profile(keys[0], info1);
		Profile pro2 = new Profile(keys[1], info2);
		Profile pro3 = new Profile(keys[2], info3);
		
		mon.add(pro);
		mon.add(pro2);
		mon.add(pro3);
		
		/*DBCollection collection = mon.mongoConnect();
		DBCursor myCursor = collection.find().sort(new BasicDBObject("date",-1)).limit(10);
		List<DBObject> listObj = myCursor.toArray(); 
		List<Profile> list = new Vector<Profile>();
		Gson gson=new Gson();
		for (DBObject temp: listObj) {
			System.out.println(temp.toMap());
			Map<String, String> a = temp.toMap();
			String id = a.get("_id");
			a.remove("_id");
			Hashtable<String, String> something = new Hashtable<String, String>();
			for (String b: a.keySet()) {
				something.put(b, a.get(b));
			}
			Profile e = new Profile(id, something);
			System.out.println(e);
			/*
			 * 
			 * List<String> x = (List<String>) temp.toMap();
			for ( String aWord : temp.toMap().subList( 1, temp.toMap().size() ) )
			{
			}
			LinkedHashMap<String, String> aVar= (LinkedHashMap<String, String>) temp.toMap().get;
			Profile pre = new Profile(id, aVar);
			System.out.println(pre);
			Profile prof = gson.fromJson(temp.toString(), Profile.class);
			list.add(prof);
		}
		System.out.println(list);
		*/
		System.out.println(mon.listAll());
		
		Profile temp = mon.retrieve("One");
		System.out.println("Retrieve: " + temp.toString());
		
		try { Profile temp2 = mon.search("Random_Name", "Timothy");
		System.out.println("Search: " + temp2.toString());
		} catch(Exception e) { System.out.println(e.getMessage() + '\n');}
		
		mon.remove("One");
		
		System.out.println(mon.listAll());
		
		System.out.println(mon.modify("Two", "Random_Name", "Timothy 2.0"));
		
		Hashtable<String, String> info4 = new Hashtable<String, String>();
		info4.put("Record: " , "Not_Old");
		info4.put("Average", "Not_Old");
		
		System.out.println(mon.modify(keys[2], info4));
		
		System.out.println(mon.dropDB());
	}
}
