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

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

public class XmlDomTest4_1
{
	public static void main(String[] args)
	{
		try
		{
			// 1. xml 파일을 메모리에 로드
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			Document xmlObj = null;
			
			String url = "VEHICLES.xml";
			xmlObj = builder.parse(url);
			// 2. 루트 엘리먼트 접근
			Element root = xmlObj.getDocumentElement();
//			System.out.println(root.getNodeName());
			//--==>> VEHICLES
			
			NodeList vehicleNodeList = root.getElementsByTagName("VEHICLE");
//			System.out.println(vehicleNodeList.getLength());
			//--==>> 10
			
			// 3. 특정 하위 엘리먼트 접근
			
			
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
	}//end main()

	private static String getText(Element parent, String tagName)
	{
		String result = "";
		
		
		return result;
		
	}
	
}
