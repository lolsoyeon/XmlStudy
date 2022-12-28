/*========================
 	XmlDomTest05.java
 	- 콘솔 기반 자바 프로그램
 	- XML DOM 활용 → (Local) XML 읽어내기
 	  (rss.xml)
 ========================*/

package com.test;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class XmlDomTest05
{
	public static void main(String[] args)
	{
		try
		{
			// 1. XML 차일 메모리에 로드
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			String url = "rss.xml";
			Document xmlObj = builder.parse(url);
			
			// 2. 루트 엘리먼트에 접근
			Element root = xmlObj.getDocumentElement();
//			System.out.println(root.getNodeName());
			
			// 3-1. 타이틀 추출하기
			Node itemNode = root.getElementsByTagName("item").item(0);
			Element itemElement = (Element)itemNode;
			
			System.out.printf("%s %n%n", XMLDOM.getText(itemElement, "title"));
			
			// 3-2. 기상 전망 추출하기
			Node wfNode = root.getElementsByTagName("wf").item(0);
			Element wfElement = (Element)wfNode;
			
			System.out.println("[기상전망] --------------------------------------");
			System.out.printf("%s%n%n", wfElement.getTextContent().replaceAll("<br />", "\n"));
			
			// 3-3. 도시별 기상 예보 추출하기
			// 도시 : 서울
			// --------------------------
			// 날짜 시간 
			// 날씨 예보 
			// 최저 온도 ~ 최고 온도
			// 강수 확률
			// --------------------------
			
//			Node bodyNode = root.getElementsByTagName("city").item(0);
//			Element bodyElement = (Element)bodyNode;
			
			System.out.println("[육상날씨] ---------------------------------------");
			
//			System.out.printf("도시 : %s %n%n"
//					, bodyElement.getNodeName()
//					, bodyElement.getTextContent());
			
//			NodeList dataNodeList = root.getElementsByTagName("data");
//			
//			for (int i = 0; i < dataNodeList.getLength(); i++)
//			{
//				Node dataNode = dataNodeList.item(i);
//				
//				Element element = (Element)dataNode;
//				
//			}
//			
//			System.out.println("--------------------------");
//			System.out.printf("날짜 시간          %s%n", bodyElement.getTextContent());
//			System.out.printf("날씨 예보          %s%n", bodyElement.getTextContent());
//			System.out.printf("최저 온도          %s%n", bodyElement.getTextContent());
//			System.out.printf("최고 온도          %s%n", bodyElement.getTextContent());
//			System.out.printf("강수 확률          %s%n", bodyElement.getTextContent());
//			System.out.println("--------------------------");
			
			NodeList locationNodeList = root.getElementsByTagName("location");
			
			for (int i = 0; i < locationNodeList.getLength(); i++)
			{
				Node locationNode = locationNodeList.item(i);
				Element locationElement = (Element)locationNode;
				
				// 이제 부터 각각의 도시들에 접근 할 수 있는 상황
				System.out.printf("도시 :  %s%n"
						, XMLDOM.getText(locationElement, "city"));
				
				System.out.println("------------------------------");
				
				NodeList dataNodeList = locationElement.getElementsByTagName("data");
				
				for(int j=0; j<dataNodeList.getLength(); j++)
				{
					// NodeList로 부터 특정 아이템 얻기
					Node dataNode = dataNodeList.item(j);
					Element dataElement = (Element)dataNode;
					
					System.out.printf("    %s / %s/ %s ~ %s / %s%n "
								, XMLDOM.getText(dataElement, "tmEf")			// 날짜 시간
								, XMLDOM.getText(dataElement, "wf")				// 날씨 예보
								, XMLDOM.getText(dataElement, "tmn")			// 최저 온도
								, XMLDOM.getText(dataElement, "tmx")			// 최고 온도
								, XMLDOM.getText(dataElement, "rnSt"));			// 강수 확률
					
				}
				
				
				
				System.out.println("------------------------------");
				/*
				NodeList dataList = locationElement.getElementsByTagName("data");
				
				if (dataList.getLength() > 0)			// check~!!!
				{
					Node dataNode = dataList.item(i);
					Element dataElement = (Element)dataNode;
				
					System.out.printf("날짜 시간 : %s%n"
							, XMLDOM.getText(dataElement,"tmEf"));
					System.out.printf("날씨 예보 : %s%n"
							, XMLDOM.getText(dataElement,"wf"));
					System.out.printf("최저 온도 ~ 최고온도 : %s ~ %s%n"
							, XMLDOM.getText(dataElement,"tmn")
							, XMLDOM.getText(dataElement,"tmx"));
					System.out.printf("강수 확률 : %s%n"
							, XMLDOM.getText(dataElement,"rnSt"));
				}
				
				
				System.out.println("------------------------------");
				
				*/
				
				
				
			}
			
			
			
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
	}

}
