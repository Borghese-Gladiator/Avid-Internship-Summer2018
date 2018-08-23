package service;

import java.io.PrintWriter;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

public class TestObjectJSON {
	public static void main(String[] args) {
		MongoDB mongo = new MongoDB();
		System.out.println(mongo.listAll());
/*		
 * String filename = "Cool_Name.txt";
		try
		   {
		   PrintWriter writer = new PrintWriter("C:\\Users\\Tim\\Documents\\" +filename, "UTF-8");
		   writer.println("The first line");
		   writer.println("The second line");
		   writer.close();
		   System.out.println("Success");
		   }
		   catch (Exception e)
		   {
			   e.printStackTrace(System.err);
		   }
		@POST
	@Path("/passJson")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public String getJson(String in) {
		Profile x = gson.fromJson(in, Profile.class);
		return x.toJson();
	}
	private Profile getProfile(String in) {
		Profile profile = gson.fromJson(in, Profile.class);
		return profile;
	}
 * 
 * @Context Request request
 * 
 * 
	private void writeToFile(String filename)
	   {
		   try
		   {
		   PrintWriter writer = new PrintWriter("C:\\Users\\Tim\\Documents\\" +filename, "UTF-8");
		   writer.println("The first line");
		   writer.println("The second line");
		   writer.close();
		   }
		   catch (Exception e)
		   {
			   e.printStackTrace(System.err);
		   }
	   }
	@POST
	@Path("/search2")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Profile search2(String in) {
		SearchObject x = gson.fromJson(in, SearchObject.class);
		return mongo.search(x.getField(), x.getValue());
	}
	@POST
	@Path("/search3")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public SearchObject search3(SearchObject in,
			@Context Request request) {
		writeToFile(request.toString());
		return in;
	}
		
		
		String epic = "Blah\n blah ";
		System.out.println(epic);
		epic=epic.replaceAll("\n", " \n");
		System.out.println(gson.toJson(epic));
		System.out.println(gson.toJsonTree(epic));
		Gson gson2 = new GsonBuilder().setPrettyPrinting().create();
		System.out.println(gson2.toJsonTree(epic));
		
		
		@POST
		@Path("/modifyField")
		@Consumes(MediaType.APPLICATION_JSON)
		@Produces(MediaType.APPLICATION_JSON)
		public String modify(String key, String field, String newValue) {
			return gson.toJson(mongo.modify(key, field, newValue));
		}
	
	
		RestAPIResources temp = new RestAPIResources();
		Hashtable<String, String> info3 = new Hashtable<String, String>();
		info3.put("Record: " , "90");
		info3.put("Average", "70");
		
		Profile pro3 = new Profile("Three", info3);
		JsonObject in = new JsonObject();
		Profile x = gson.fromJson(in, Profile.class);
		System.out.println(x);
//		System.out.println(temp.convertToJSON(pro3));
		
//		System.out.println(temp.add2(pro3));
		
//		System.out.println(temp.add(pro3));
		//Try inputting Json
		
//		temp.add(gson.toJson(pro3));
		
		/* DELETED TESTS
		 * // This method is called if TEXT_PLAIN is request
	@GET 
	@Produces(MediaType.TEXT_PLAIN)
	public String sayPlainTextHello(@QueryParam("input") String in) {
	  return "Hello Jersey" + in;
	}
	// This method is called if XML is request
	@GET
	@Path("/hello")
	@Produces(MediaType.APPLICATION_XML) 
	public String sayXMLHello() {
	  return "<?xml version=\"1.0\"?>" + "<hello> Hello Jersey" + "</hello>";
	}
	// This method is called if HTML is request
	@GET
	@Produces(MediaType.TEXT_HTML)
	public String sayHtmlHello() {
	  return "<html> " + "<title>" + "Hello Jersey" + "</title>"
	      + "<body><h1>" + "Hello Jersey" + "</body></h1>" + "</html> ";
	}
	@POST
	@Path("/get")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public String retrieve(String key) {
		return "{\"JSON:\" " + key + "}";
	}
	@POST
	@Path("/epic")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.TEXT_HTML)
	public String save(@FormParam("firstName") String firstName) {
		return "<html> " + "<title>" + "Hello Jersey" + "</title>"
			      + "<body><h1>" + firstName + "</body></h1>" + "</html> ";
	  }
	@POST
	@Path("/something")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public String weird(@QueryParam("firstName") String firstName) {
		return "{\"JSON:\" " + firstName + "}";
	  }
	@POST
	@Path("/Blah")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public String we(@PathParam("firstName") String firstName) {
		return "{\"JSON:\" " + firstName + "}";
	  }
	/*@POST
	@Path("/get")
	@Consumes(MediaType.TEXT_HTML)
	@Produces(MediaType.APPLICATION_JSON)
	public Profile retrieve(@QueryParam("key") String key) {
		if (key == null) {
			return new Profile("Error", new Hashtable<String, String>());
		}
		System.out.println("Key: " + key);
		return mongo.retrieve(key);
	}
	@POST
	@Path("/add")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public String add(Profile profile) {
		mongo.add(profile);
		return profile.toJson();
	}
	@POST
	@Path("/add2")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public String add2(Profile profile) {
		return profile.toJson();
	}
	@POST
	@Path("/add123")
	@Produces(MediaType.APPLICATION_JSON)
	public Profile add123(@FormParam("prof") Profile profile) {
		return profile;
	}
	@POST
	@Path("/doSomething")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public String doSomething(Hashtable<String, String> temp) {
		Gson gson = new Gson();
		return gson.toJson(temp);
	}
		 
		 *
		 *
		 *
		 *@POST
	@Path("/search")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public String search(String in) {
		Hashtable<String, String> input = gson.fromJson(in, Hashtable.class);
		for (String temp: input.keySet())
		{
			temp.get
		}
		String field = input.get()
		String field, String value
		return mongo.search(field, value).toJson();
	} 
		 *
		 */
	}
}