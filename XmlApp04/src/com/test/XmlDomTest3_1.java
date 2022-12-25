/*==========================================
 	XmlDomTest03.java 22-12-23
 	- 콘솔 기반 자바 프로그램
 	- XML DOM 활용 → 로컬(Local) XML 읽어내기
 	  (breakfast_menu.xml)
 	  - 내가 한 것 DO
 ==========================================*/

// breakfast_menu 파일을 대상으로 
/* 
 ■ [Belgian Waffles] $5.95 650칼로리
	- Two of our famous Belgian Waffles with plenty of real maple syrup
 ■ [Strawberry Belgian Waffles] $7.95 900칼로리
    - Light Belgian waffles covered with strawberries and whipped cream
    
 ■ [Berry-Berry Belgian Waffles] $8.95 900칼로리
	- Light Belgian waffles covered with an assortment of fresh berries and whipped cream
						:
-------------------------------------------------------------------------------
						
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

public class XmlDomTest3_1
{
	public static void main(String[] args)
	{
		try
		{
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			Document xmlObj = null;
			
			// 1. XML 파일을 메모리에 로드 → XML DOM 형성
			String url = "breakfast_menu.xml";
			xmlObj = builder.parse(url);
			
			// 2. 루트 엘리먼트 접근
			Element root = xmlObj.getDocumentElement();
//			System.out.println(root.getNodeName());
			//--==>> breakfast_menu

			// 3. 특정 하위 엘리먼트 접근 → 위치, 이름 등을 기준으로 접근
			NodeList breakNodeList = root.getElementsByTagName("food");
			// System.out.println(breakNodeList.getLength());
			//--==>> 5

			for (int i = 0; i < breakNodeList.getLength(); i++)
			{
				// 4. 텍스트 노드(속성 노드) 접근 → 데이터 획득
				Node breakNode = breakNodeList.item(i);
				
				Element breakElement = (Element) breakNode;
				
				// 5. 결과 출력
				System.out.printf("■ [%s]  %s  %s칼로리%n  - %s%n"
						, getText(breakElement, "name")
						, getText(breakElement, "price")
						, getText(breakElement, "calories")
						, getText(breakElement, "description"));
				
				System.out.println("---------------------------------------------------------------------");
				
				System.out.println();
				
			}
			
			
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
	}//end main()
	
	private static String getText(Element parent, String tagName)
	{
		String result = "";
		
		// 대상 태그(tagName) 객체의 첫 번째 자식 노드 얻어오기
		Node node = parent.getElementsByTagName(tagName).item(0);
		Element element = (Element)node;
		
		// 대상 엘리먼트(element) 의 자식 노트(텍스트 노드)의 값 얻어오기
		result = element.getChildNodes().item(0).getNodeValue();
		
		//다른 노드도 값이 뭔지 시간날때 찍어보기 ~!!!!
		
		return result;
	}

}
