/*============================================================================

 	XmlDomTest06
 	- 콘솔 기반 자바 프로그램
 	- XML DOM 활용 → 원격(Remote) XML 읽어내기
 	  (http://www.kma.go.kr/weather/forecast/mid-term-rss3.jsp?stnId=108)
 =============================================================================*/

/*
 	http://www.kma.go.kr/weather/forecast/mid-term-rss3.jsp?stnId=108  전국
 	http://www.kma.go.kr/weather/forecast/mid-term-rss3.jsp?stnId=109  서울, 경기
 	http://www.kma.go.kr/weather/forecast/mid-term-rss3.jsp?stnId=105  강원
 	http://www.kma.go.kr/weather/forecast/mid-term-rss3.jsp?stnId=131  충북
 	http://www.kma.go.kr/weather/forecast/mid-term-rss3.jsp?stnId=133  충남
 	http://www.kma.go.kr/weather/forecast/mid-term-rss3.jsp?stnId=146  전북
 	http://www.kma.go.kr/weather/forecast/mid-term-rss3.jsp?stnId=156  전남
 	http://www.kma.go.kr/weather/forecast/mid-term-rss3.jsp?stnId=143  경북
 	http://www.kma.go.kr/weather/forecast/mid-term-rss3.jsp?stnId=159  경남
 	http://www.kma.go.kr/weather/forecast/mid-term-rss3.jsp?stnId=184  제주
 */

package com.test;

import java.net.URL;
import java.util.Scanner;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;


public class XmlDomTest06
{
	public static void main(String[] args)
	{
		Scanner sc = new Scanner(System.in);
		String[] stnId = {"108","109","105","131","133","146","156","143","156","184"};
		
		do
		{
			try
			{
				
				DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
				DocumentBuilder builder = factory.newDocumentBuilder();
				Document xmlObj = null;
				
				//Local XML 파일인 경우...
				/*
				 String url = "rss.xml"
				 xmlObj = builder.parse(url);
				 */
				
				// Remote XML 파일인 경우...
				
				// 사용자의 선택값(외부 입력값) 처리
				
				System.out.println("■■■ 기상청 육상 중기 예보 ■■■");
				System.out.println("-----------------------------------");
				System.out.println(" 1. 전국    ");
				System.out.println(" 2. 서울, 경기");
				System.out.println(" 3. 강원    ");
				System.out.println(" 4. 충북    ");
				System.out.println(" 5. 충남    ");
				System.out.println(" 6. 전북    ");
				System.out.println(" 7. 전남    ");
				System.out.println(" 8. 경북    ");
				System.out.println(" 9. 경남    ");
				System.out.println(" 10. 제주특별 자치도");
				System.out.println("-----------------------------------");
				System.out.println(">> 지역 선택 (종료 0) : ");
				
				String m = sc.next();
				if (m.equals("0"))
				{
					break;
				}
				
				String str = String.format
						("http://www.kma.go.kr/weather/forecast/mid-term-rss3.jsp?stnId=%s"
						, stnId[Integer.parseInt(m)-1] );
				
				// 확인 (테스트)
//				System.out.println(str);
				//--5. 충남 선택
				//--==>> http://www.kma.go.kr/weather/forecast/mid-term-rss3.jsp?stnId=133
				
				// URL 객체 구성 - 절대 경로 지정 방식
				// (그냥 문자열로 넘기지않고 객체로 넘기는방법으로 해봄)
				URL url = new URL(str);
				
				// URL 로 접근하여 데이터 내용 읽어오기★
				InputSource is = new InputSource(url.openStream());
				xmlObj = builder.parse(is);
				
				// 루트 엘리먼트 접근 하기
				Element root = xmlObj.getDocumentElement();
				
				// 타이틀 추출하기 do
				Node itemNode = root.getElementsByTagName("item").item(0);
				Element itemElement = (Element)itemNode;
				
				System.out.printf("%s %n%n", XMLDOM.getText(itemElement, "title"));
				
				// 기상전망 추출하기 
				Node wfNode = root.getElementsByTagName("wf").item(0);
				Element wfElement = (Element)wfNode;
				
				System.out.println("[기상전망] ------------------------------");
				System.out.printf("%s%n%n", wfElement.getTextContent().replaceAll("<br />", "\n"));
				
				// 도시별 기상 예보 추출하기 
				System.out.println("[육상날씨] ------------------------------");
				
				NodeList locationNodeList = root.getElementsByTagName("location");
				for (int i = 0; i < locationNodeList.getLength(); i++)
				{
					Node locationNode = locationNodeList.item(i);
//					System.out.println(locationNode.getNodeValue());
					Element locationElement = (Element)locationNode;
					
					System.out.printf(" 도시 : %s%n ", XMLDOM.getText(locationElement, "city"));
					System.out.printf(" 날짜 및 시간 : %s%n" , XMLDOM.getText(locationElement, "tmEf"));
					System.out.printf(" 기상 상태 : %s%n" , XMLDOM.getText(locationElement, "wf"));
					System.out.printf(" 최저기온 ~ 최고기온 : %s %s%n" 
							, XMLDOM.getText(locationElement, "tmn")
							, XMLDOM.getText(locationElement, "tmm"));

					
					
					System.out.println("------------------------------");
				}
				
				
				
				
				
			} catch (Exception e)
			{
				System.out.println(e.toString());
			}
			
		} while (true);
		
	}//end main
	
}
