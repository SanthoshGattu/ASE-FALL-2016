package org.santhosh.gattu.Lab8;


import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
 
@Path("/perimeterservice")
public class Perimeter {
	@GET
	@Produces("application/xml")
	public String perimeterstatic() {
 
		Double perimeter;
		Double side = 10.0;
		perimeter = 4*side;
 
		String result = "Perimeter of square: " + perimeter;
		return "<perimeterservice>" + "<side>" + side + "</side>" + "<perimeteroutput>" + result + "</perimeteroutput>" + "</perimeterservice>";
	}
 
	@Path("{c}")
	@GET
	@Produces("application/xml")
	public String perimeterinput(@PathParam("c") Double c) {
		Double perimeter;
		Double side = c;
		perimeter = 4*side;
 
		String result = "Perimeter of Square: " + perimeter;
		return "<perimeterservice>" + "<side>" + side + "</side>" + "<perimeteroutput>" + result + "</perimeteroutput>" + "</perimeterservice>";
	}
	public Double parimeterTestInput(@PathParam("f") Double f)
	{
	  
	  Double perimeter;
	  perimeter = 4*f;
	  return perimeter;
	}
}