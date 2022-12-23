/*==========================================
 	XmlDomTest02.java
 	- 콘솔 기반 자바 프로그램
 	- XML DOM 활용 → 로컬(Local) XML 읽어내기
 	  (memberList.xml) 2022-12-23
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

public class XmlDomTest02
{
	public static void main(String[] args)
	{
		// 1. XMl 파일(memberList.xml)을 메모리에 로드
		// 		→ XML DOM 생성
		// 2. 루트 엘리먼트 접근 
		// 		→ memberList
		// 3. 루트 엘리먼트의 특정 하위 엘리먼트 접근
		// 		→ 위치, 이름 등을 기준으로 접근
		// 4. 텍스트 노드(속성 노드) 접근
		// 		→ 원하는 데이터 얻어내기
		// 5. 결과 출력
		
		try
		{
			// XMl 파일 메모리에 로드 → XML DOM 생성
			// DocumentBuilderFactory → DocumentBuilder → XML 
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			Document xmlObj = null;
			
			// 같은 경로이므로 파일이름만
			String url = "memberList.xml";
			xmlObj = builder.parse(url);
			
			// 루트 엘리먼트 접근
			Element root = xmlObj.getDocumentElement();
			
			// 루트 엘리먼트를 활용하여 특정 하위 엘리먼트에 접근
			NodeList memberInfoNodeList = root.getElementsByTagName("memberInfo");
			//-- 이 때, 『getElementsByTagName()』 메소드는
			//    태그의 이름을 가지고 자식이나 자손 노드에 접근하는 메소드
			//						   (특정노드)
			
			// ※ 이렇게 얻어낸 NodeList 객체를 구성하는 Node 의 갯수를
			//	『getLength()』 메소드를 통해 확인 할 수 있다.
			
			// 확인
//			System.out.println(memberInfoNodeList.getLength());
			//--==>> 2
			
			for (int i = 0; i < memberInfoNodeList.getLength(); i++)		// 0 ~ 1
			{
				Node memberInfoNode = memberInfoNodeList.item(i);
				//--『getElementsByTagName()』 메소드가 이름을 통해 대상을 획득하는 과정을 수행했다면,
				//	『item()』 메소드는 위치(인덱스)를 통해 대상을 획득하는 과정을 수행하게 된다.
				
				// 캐스팅 하여 뽑는당
				Element memberInfoElement = (Element)memberInfoNode;
				
				
				System.out.printf("%s %s%n"
						, getText(memberInfoElement, "name")
						, getText(memberInfoElement, "telephone"));
				
				// 커리큘럼에 대한 추가 처리----------------------------
		
				// memberInfoElement 로 부터 curriculumn NodeList 얻어오기
				NodeList curriculumnNodeList = memberInfoElement.getElementsByTagName("curriculumn");
					
				// ★ 커리큘럼이 존재하는 경우 수행할 수 있도록 처리 ★
				if (curriculumnNodeList.getLength() > 0)
				{
					Node curriculumnNode = curriculumnNodeList.item(0);
					
					// 캐스팅
					Element curriculumnElement = (Element)curriculumnNode;
					
					
					
					// 방법 1.
					/*
					NodeList subNodeList = curriculumnElement.getElementsByTagName("sub");
					
					for (int j = 0; j < subNodeList.getLength(); j++)
					{
						Node subNode = subNodeList.item(j);
						Element subElement = (Element)subNode;
						System.out.printf("%s%n", subElement.getTextContent());
					}
					System.out.println();
					*/
					
					// 방법 2. 더 많이 쓰이는 방법 처음엔 조금 어렵다.
					/*
					   -------------------------------------------
					   Node Type 	Named Constant
					   -------------------------------------------
					   		1		ELEMENT_NODE
					   		2		ATTRIBUTE_NODE
					   		3		TEXT_NODE
					   		4		CDATA_SECTION_NODE
					   		5		ENTITY_REFERENCE_NODE
					   		6		EMTITY_NODE
					   		7		PROCESSING_INSTRUCTION_NODE
					   		8		COMMENT_NODE
					   		9		DOCUMENT_NODE
					   	   10		DOCUMENT_TYPE_NODE
					   	   11		DOCUMENT_FRAGMENT_NODE
					   	   12		NOTATION_NODE
					   -------------------------------------------
					 */
					
					NodeList subNodeList = curriculumnElement.getChildNodes();		// check~!!★
					
					// 테스트
					// System.out.println(subNodeList.getLength());
					//--==>> 7
					
					for (int m=0; m<subNodeList.getLength(); m++)
					{
//						System.out.println("m : " + m);
						Node subNode = subNodeList.item(m);
						if (subNode.getNodeType() == 1)		// ELEMENT_NODE	// check~!!
						{
							Element subElement  = (Element)subNode;
							System.out.printf("%s ", subElement.getTextContent());
							
						}
						
					}
					
					System.out.println();
					
					System.out.println("-----------------------");
					
					
				}
		
				//---------------------------- 커리큘럼에 대한 추가 처리
				
				
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
