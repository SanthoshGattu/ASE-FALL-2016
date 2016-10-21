package org.santhosh.gattu.Lab8;


import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
 
@Path("/areaservice")
public class Area {
	@GET
	@Produces("application/xml")
	public String areastatic() {
 
		Double area;
		Double side = 10.0;
		area = (side * side);
 
		String result = "Area of square: " + area;
		return "<areaconversion>" + "<side>" + side + "</side>" + "<areaoutput>" + result + "</areaoutput>" + "</areaconversion>";
	}
 
	@Path("{c}")
	@GET
	@Produces("application/xml")
	public String areainput(@PathParam("c") Double c) {
		Double area;
		Double side = c;
		area = (side * side);
 
		String result = "Area of Square: " + area;
		return "<areaconversion>" + "<side>" + side + "</side>" + "<areaoutput>" + result + "</areaoutput>" + "</areaconversion>";
	}
	 public Double areaTestInput(@PathParam("f") Double f)
		{
		  
		  Double area;
		  area = f*f;
		  return area;
		}
}