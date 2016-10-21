package org.santhosh.gattu.Lab8;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

public class TestArea {
	
	Area a = new Area();
	Double area = a.areaTestInput(6.0);
	
	Double testArea =60.0;
	
	@Test
	public void test() {
		
		System.out.println("@Test conversion(): " + area + " = " + testArea);
	assertEquals(testArea,area);		
}
}