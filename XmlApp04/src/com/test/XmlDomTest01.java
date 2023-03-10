/*==========================================
 	XmlDomTest01.java
 	- 콘솔 기반 자바 프로그램
 	- XML DOM 활용 → 로컬(Local) XML 읽어내기
 	  (VEHICLES)
 ==========================================*/

package com.test;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;


public class XmlDomTest01
{
	public static void main(String[] args)
	{
		
		// XML 에서 가장 중요한것은 DOM 처리 ~!!! 이 파트가 이해되야 한다.
		// 1. XML 파일을 메모리에 로드 → XML DOM 형성
		// 2. 루트 엘리먼트 접근
		// 3. 특정 하위 엘리먼트 접근 → 위치, 이름 등을 기준으로 접근
		// 4. 텍스트 노드(속성 노드) 접근 → 데이터 획득
		// 5. 결과 출력
		
		try
		{
			// XML 파일을 메모리에 로드시킬 준비
			// → XML DOM 형성을 위한 준비
			// (이를 위해 필요한 리소스 구성)
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			Document xmlObj = null;
			
			// XML 파일을 메모리에 로드 → XML DOM 형성
			String url = "VEHICLES.xml";
			xmlObj = builder.parse(url);
			
			// 루트 엘리먼트 접근
			Element root = xmlObj.getDocumentElement();
			
			// 확인
//			System.out.println(root.getNodeName());
			//--==>> VEHICLES
			
			// 특정 하위 엘리먼트 접근 → 위치, 이름 등을 기준으로 접근
			// 『getElementByTagName()』 메소드는 태그의 이름을 가지고 
			// 가식(자손) 노드에 접근하는 메소드
			NodeList vehicleNodeList = root.getElementsByTagName("VEHICLE");
			
			// ※ NodeList 객체에 들어있는 Node 갯수를
			//   『getLength()』 메소드를 통해 확인 할 수 있다.
			
			// 확인
			// System.out.println(vehicleNodeList.getLength());
			// --==>> 10
			for (int i = 0; i < vehicleNodeList.getLength(); i++)	// 10번 반복
			{
				// 『item()』 메소드는 인덱스에 위치한 노드 접근 메소드
				Node vehicleNode = vehicleNodeList.item(i);			// i → 0 ~ 9
				
				// 캐스트 연산자를 이용하면
				// Node 객체를 Element 객체로 변환하는 것이 가능하다.
				// Node 는 사우이 자료형, Element 는 하위 자료형이기 때문이다.
				Element vehicleElement = (Element)vehicleNode;
				
				/*
				NodeList makeNodeList = vehicleElement.getElementsByTagName("MAKE");
				Node makeNode = makeNodeList.item(0);
				Element makeElement = (Element)makeNode;
				System.out.printf("%s : %s%n"
						, makeElement.getNodeName()
						, makeElement.getTextContent());
				
				NodeList modelNodeList = vehicleElement.getElementsByTagName("MODEL");
				Node modelNode = modelNodeList.item(0);
				Element modelElement = (Element)modelNode;
				System.out.printf("%s : %s%n"
						,modelElement.getNodeName()
						,modelElement.getTextContent());
				*/
				
				// 특정 엘리먼트의 텍스트 데이터를 얻는
				// 사용자 정의 메소드 『getText()』 호출
				System.out.printf("%s %s %s %s %s%n"
									, getText(vehicleElement, "MAKE")
									, getText(vehicleElement, "MODEL")
									, getText(vehicleElement, "YEAR")
									, getText(vehicleElement, "PICTURE")
									, getText(vehicleElement, "STYLE")
									, getText(vehicleElement, "DOORS"));
				
			}
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		
	}
	
	// 사용자 정의 함수 위에서 반복잡업이 이어지므로 그 작업을 할 수 있도록한다.
	private static String getText(Element parent, String tagName)
	{
		// 반환할 결과값
		String result = "";
		
		// 특정 태그 이름을 가진 객체의 첫번째 자식 노드를 얻어온 다음
		Node node = parent.getElementsByTagName(tagName).item(0);
		// 엘리먼트로 변환
		Element element =(Element)node;
		
		// 특정 엘리먼트의 자식 노드(Text Node)의 값(nodeValue)를 얻어올 수 있도록 처리
		result = element.getChildNodes().item(0).getNodeValue();
		
		
		//  결과값 반환
		return result;
		
	}//end getText
	

}
