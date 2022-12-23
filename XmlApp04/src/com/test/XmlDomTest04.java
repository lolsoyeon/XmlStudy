/*==========================================
 	XmlDomTest04.java 	22-12-23
 	- 콘솔 기반 자바 프로그램
 	- XML DOM 활용 → 로컬(Local) XML 읽어내기
 	  (VEHICLES.xml)
 ==========================================*/
/*
 --------------------------------------------------
 NO  MAKE   MODEL 	YEAR   STYLE   			PRICE
 --------------------------------------------------
 1   Dodge  Durango 1998   Sport Utility	18000
 						:
 */

/*
 --------------------------------------------------
 NO  MAKE   MODEL 	YEAR   STYLE   			PRICE
 --------------------------------------------------
 1   Dodge  Durango 1998   Sport Utility	18000
 Options ------------------------------------------
 		Power_Locks : Yes
 		Power_Window : Yes
 		Stereo : Radio/Cassette/CD
 		Air_Conditioning : Yes
		Automatic : Yes
		Four_Wheel_Drive : Full/Partial
		Note : Very clean
 */



package com.test;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

public class XmlDomTest04
{
	public static void main(String[] args)
	{
		try
		{
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
	}

}
