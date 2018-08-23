package service;
import java.io.PrintWriter;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Request;

import com.google.gson.Gson;
@Path("/ProfileService")
public class RestAPIResources {	
	private MongoDB mongo = new MongoDB(); 
	Gson gson = new Gson();
	@POST
	@Path("/get")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Profile retrieve(String key) {
		return mongo.retrieve(key);
	}
	@POST
	@Path("/add")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Profile add(Profile profile) {
		mongo.add(profile);
		return profile;
	}
	@POST
	@Path("/list") 
	@Produces(MediaType.APPLICATION_JSON)
	public List<Profile> listAll() {
		return mongo.listAll();
	}
	@POST
	@Path("/delete")
	@Consumes(MediaType.APPLICATION_JSON)
	public void remove(String key) { 
		mongo.remove(key);
	}
	@POST
	@Path("/modify")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Profile modify(Profile newProf) {
		return mongo.modify(newProf.getKey(), newProf.getInfo());
	}
	
	@POST
	@Path("/search")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Profile search(SearchObject in) {
		return mongo.search(in.getField(), in.getValue());
	}
}