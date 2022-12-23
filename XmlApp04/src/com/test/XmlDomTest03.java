/*==========================================
 	XmlDomTest03.java 22-12-23
 	- 콘솔 기반 자바 프로그램
 	- XML DOM 활용 → 로컬(Local) XML 읽어내기
 	  (breakfast_menu.xml)
 ==========================================*/

// breakfast_menu 파일을 대상으로 
/* 
 ■ [Belgian Waffles] $5.95 650칼로리
	- Two of our famous Belgian Waffles with plenty of real maple syrup
 ■ [Strawberry Belgian Waffles] $7.95 900칼로리
    - Light Belgian waffles covered with strawberries and whipped cream
    
 ■ [Berry-Berry Belgian Waffles] $8.95 900칼로리
	- Light Belgian waffles covered with an assortment of fresh berries and whipped cream
-------------------------------------------------------------------------------
						:
						
 */
// 이와 같이 결과 출력이 이루어질 수 있도록 프로그램을 작성한다.
// (XML DOM 활용)

package com.test;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class XmlDomTest03
{
	public static void main(String[] args)
	{
		try
		{
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			Document xmlObj = null;
			
			String url = "breakfast_menu.xml";
			xmlObj = builder.parse(url);
			
			Element root = xmlObj.getDocumentElement();
			
			NodeList foodNodeList = root.getElementsByTagName("food");
			for (int i = 0; i < foodNodeList.getLength(); i++)
			{
				Node foodNode = foodNodeList.item(i);
				Element foodElement = (Element)foodNode;
				
				System.out.printf("■ [%s]  %s  %s칼로리%n	- %s%n"
						, getText(foodElement, "name")
						, getText(foodElement, "price")
						, getText(foodElement, "calories")
						, getText(foodElement, "description"));
				System.out.println("---------------------------------------------------------------------");
			}
			
			
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
	}
	
	private static String getText(Element parent, String tagName)
	{
		String result = "";
		
		Node node = parent.getElementsByTagName(tagName).item(0);
		Element element = (Element)node;
		
		result = element.getChildNodes().item(0).getNodeValue();
		
		return result;
	}

}

// 실행 결과
/*
 ■ [Belgian Waffles]  $5.95  650칼로리
	- Two of our famous Belgian Waffles with plenty of real maple syrup
---------------------------------------------------------------------
■ [Strawberry Belgian Waffles]  $7.95  900칼로리
	- Light Belgian waffles covered with strawberries and whipped cream
---------------------------------------------------------------------
■ [Berry-Berry Belgian Waffles]  $8.95  900칼로리
	- Light Belgian waffles covered with an assortment of fresh berries and whipped cream
---------------------------------------------------------------------
■ [French Toast]  $4.50  600칼로리
	- Thick slices made from our homemade sourdough bread
---------------------------------------------------------------------
■ [Homestyle Breakfast]  $6.95  950칼로리
	- Two eggs, bacon or sausage, toast, and our ever-popular hash browns
---------------------------------------------------------------------
*/

