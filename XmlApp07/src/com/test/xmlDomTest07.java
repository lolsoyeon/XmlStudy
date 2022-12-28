/*============================================================================
 	XmlDomTest07.java
 	- 콘솔 기반 자바 프로그램
 	- XML DOM 활용 → 원격(Remote) XML 읽어내기
 	(https://fs.jtbc.co.kr/RSS/newsflash.xml) T
=============================================================================*/
/*
title>JTBC News
link>https://fs.jtbc.co.kr/RSS/newsflash.xml
description>속보 RSS
copyright>Copyright(C) JTBC All rights reserved.

주요 기사 ----------------------------
title>12월 27일 (화) 상암동클라스 다시보기
description> 12월 27일 화요일, 당신의 클라스를 높여드리는 아침 '상암동 클라스' 어제(26일) 생방송 시청 인증샷 많은 분들이 올려주셨는데요. 저희는 이 두 분을 뽑았습니다. 바로 크게 띄워주세요. 먼저 인자한 미소로 셀카
link>https://news.jtbc.co.kr/article/article.aspx?news_id=NB12108656
pubDate>2022.12.27


title>모임 잦은 연말연시, 숙취와의 전쟁…내 몸 지키는 방법은? (민혜연 가정의학과 전문의)｜상클 라이프
description> ■ 인용보도 시 프로그램명 'JTBC 상암동 클라스'를 밝혀주시기 바랍니다. 저작권은 JTBC에 있습니다.■ 방송 : JTBC 상암동 클라스 / 진행 : 이가혁&middot;김하은[앵커]'상클 라이프' 매주 화요일, 여러분의 건강
link>https://news.jtbc.co.kr/article/article.aspx?news_id=NB12108646
pubDate>2022.12.27


title>'나홀로' 초저금리 일본도 정책 변화…엔화 강세 시대 오나? (홍춘욱 이코노미스트)｜머니클라스
description> ■ 인용보도 시 프로그램명 'JTBC 상암동 클라스'를 밝혀주시기 바랍니다. 저작권은 JTBC에 있습니다.■ 방송 : JTBC 상암동 클라스 / 진행 : 이가혁[앵커]경제를 잘 알지 못하는 사람들을 위한 당장 내 돈이 되는 
pubDate>2022.12.27
link>https://news.jtbc.co.kr/article/article.aspx?news_id=NB12108647

title>"송중기 열애 축하합니다"…중국·일본 언론도 집중 보도｜월드클라스
description> [캐스터]뇌를 먹는 아메바의 감염사례가 국내에서도 처음으로 나왔습니다.안타깝게도 첫 사례부터가 사망 사례인데요.남의 나라 얘기인 줄만 알았는데, 이 사고가 우리나라에서도 났다니 무섭습니다.도대체 이 뇌를
link>https://news.jtbc.co.kr/article/article.aspx?news_id=NB12108648
pubDate>2022.12.27

 */

package com.test;

import java.net.URL;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

import oracle.net.aso.r;

public class xmlDomTest07
{
	public static void main(String[] args)
	{
		/*
		 1. 원격 XML 정보를 요청하고,  그 결과를 메모리에 로드
		 → XML DOM 구성
		 - DBF 활용
		 - DB 활용
		 - XML 로딩
		 
		 2. 루트 엘리먼트 접근
		 3. 특정, 하위 엘리먼트 접근
		 	→ 위치, 이름 등
		 4. 텍스트 노드 접근
		 	→ 필요한 데이터 획득
		 5. 결과 출력
		 */
		try
		{
			// ※ DOM(Document Object Model)
			//		- XML 이나 HTML Document(문서)를 응용 프로그램에서 사용하기 위한 API 규격
			//		- DOM 은 Document(문서)의 각 부분들을 객체(Object)로 표현한 API
			
			// ※ DOM(Document Object Model) 파서 (Parser)
			//	- XML 문서를 읽고, 해석한 후,
			//	  해석한 결과를 메모리에 DOM 객체 트리 구조로 생성시키는 파서(Parser)
			//	- 원하는 게이터에 접근할 수 있도록 해 주어
			//	  검색 , 수정, 삭제 등의 처리를 할 수 있도록 지원
			
			
			// ※ DOM 을 컨트롤 하는 과정에서 주로 사용되는 DOM 인터페이스
			//	  - Node
			//		: 모든 객체의 부모 인터페이스로서 공통적으로 기능하는 함수를 가진다.
			//	  - NodeList(NODESET)
			//		: 노드들을 리스트로 받아 처리하기 쉽도록 한 것.
			//	  - Document
			//		: DOM(Document Object Model) 트리 주고의 최상의 노드로
			//		  XML 문서 자체를 의미한다.
			// 	  - Element
			//      : XML 의 엘리먼트에 해당하는 객체 유형
			// 	  - Attr
			//		: XML의 Attribute 에 해당하는 객체 유형.
			//	  - CharacterDate
			//		: XML 의 데이터에 해당하는 객체 유형.
			//	  - Text
			//		: 문자 데이터(내용)에 해당하는 객체 유형.
			
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			//-- 『DocumentBuilderFactory』
			//	 DocumentBulder (DOM Parser)를 생성할 수 있도록 지원하는 Factory 클래스.
			
			DocumentBuilder builder = factory.newDocumentBuilder();
			//-- 『DocumentBuilder』
			//   DOM Parser 객체의 클래스.
			
			Document xmlObj = null;
			//-- 『Document』
			//   XML 문서 자체를 의미하는 객체
			
			String str = "https://fs.jtbc.co.kr/RSS/newsflash.xml";
			URL url = new URL(str);
			//-- 요청하게 될 문서의 URL 구성.
			
			InputSource is = new InputSource(url.openStream());
			//-- 해당 URL 의 스트림을 읽어들여 메모리에 로드할 수 있도록 준비
			
			xmlObj = builder.parse(is);
			//-- 문서를 읽고, 메모리에 DOM 크리 구조의 객체를 구성.
			
			// 루트 엘리먼트 접근
			Element root = xmlObj.getDocumentElement();
			
			// 확인(테스트)
			//System.out.println(root.getNodeName());
			//--==>> rss
			
			Element channelElement = (Element)root.getElementsByTagName("channel").item(0);
			
			System.out.printf("title> %s%n", XMLDOM.getText(channelElement, "title"));
			System.out.printf("link> %s%n", XMLDOM.getText(channelElement, "link"));
			System.out.printf("description> %s%n", XMLDOM.getText(channelElement, "description"));
			System.out.printf("copyright> %s%n%n", XMLDOM.getText(channelElement, "copyright"));
			
			
			System.out.println("주요 기사-------------------------------");
			NodeList itemNodeList = channelElement.getElementsByTagName("item");
			for (int i = 0; i < itemNodeList.getLength(); i++)
			{
				Element itemElement = (Element)itemNodeList.item(i);
				System.out.printf("title> %s%n",XMLDOM.getText(itemElement, "title") );
				System.out.printf("link> %s%n",XMLDOM.getText(itemElement, "link") );
				System.out.printf("description> %s%n",XMLDOM.getText(itemElement, "description"));
				System.out.printf("pubDate> %s%n%n",XMLDOM.getText(itemElement, "pubDate"));
				
//				System.out.println();
			}
			
			
			
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
	}
	
	
	
	
	
	

}
