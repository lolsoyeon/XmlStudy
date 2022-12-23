/*==========================================
 	XmlDomTest03.java
 	- 콘솔 기반 자바 프로그램
 	- XML DOM 활용 → 로컬(Local) XML 읽어내기
 	  (memberList.xml)
 	- 내가 해본것 DO
 ==========================================*/
/*
 김태민 010-1212-3434
 유동현 010-7878-8989
 */
package com.test;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class XmlDomTest2_1
{
	public static void main(String[] args)
	{
		// 1. XML 파일을 메모리에 로드 → XML DOM 형성
		// 2. 루트 엘리먼트 접근
		// 3. 특정 하위 엘리먼트 접근 → 위치, 이름 등을 기준으로 접근
		// 4. 텍스트 노드(속성 노드) 접근 → 데이터 획득
		// 5. 결과 출력
		try
		{
			// 1. XML 파일을 메모리에 로드시킬 준비
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			Document xmlObj = null;
			
			// 1. XML 파일을 메모리에 로드 → XML DOM 형성
			String url = "memberList.xml";
			xmlObj = builder.parse(url);
			
			// 2. 루트 엘리먼트 접근
			Element root = xmlObj.getDocumentElement();
			// System.out.println(root.getNodeName());
			
			NodeList memberNodeList = root.getElementsByTagName("memberInfo");
			
			
			// System.out.println(memberNodeList.getLength());
			//--==>> 2
			
			// 3. 특정 하위 엘리먼트 접근 → 위치, 이름 등을 기준으로 접근
			for (int i = 0; i < memberNodeList.getLength(); i++)
			{
				Node memberList = memberNodeList.item(i);
				
				Element memberElement = (Element)memberList;
			
				
				System.out.printf("%s %s%n"
//						, getText(memberElement, "name")
//						, getText(memberElement, "telephone")
						
				// 커리큘럼에 대한 추가 처리----------------------------
						, memberElement.getNodeName()
						, memberElement.getTextContent());
				
				
				
				//---------------------------- 커리큘럼에 대한 추가 처리

			}
			/*
			Node memberList = memberNodeList.item(0);
			
			Element memberElement = (Element) memberList;
		
			System.out.printf("%s %s"
							, memberElement.getNodeName()
							, memberElement.getTextContent());
			
			*/
			
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		
				
	}
	private static String getText(Element parent, String tagName)
	{
		// 반환할 결과값
		String result= "";
	
		// 특정 이름을 가진 첫 번째 자식을 얻어온다.
		Node node = parent.getElementsByTagName(tagName).item(0);
		
		Element element = (Element)node;
		
		result = element.getChildNodes().item(0).getNodeValue();
		
		
		// 반환될 값
		return result;
		
	}
	
	private static String getContent(Element childe, String tagName)
	{
		String result = "";
		
		
		return result;
		
	}

}
