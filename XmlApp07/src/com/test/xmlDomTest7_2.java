/*============================================================================
 	XmlDomTest07.java  2022-12-27
 	- 콘솔 기반 자바 프로그램
 	- XML DOM 활용 → 원격(Remote) XML 읽어내기
 	URL, InputSource 사용 ver.
 	(https://fs.jtbc.co.kr/RSS/newsflash.xml)	 속보
 	https://fs.jtbc.co.kr/RSS/politics.xml		 정치
 	https://fs.jtbc.co.kr/RSS/entertainment.xml  연예
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

public class xmlDomTest7_2
{
	public static void main(String[] args)
	{
		try
		{
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			Document xmlObj = null;
			String url = "https://fs.jtbc.co.kr/RSS/newsflash.xml";

			URL urlStr = new URL(url);
			
			InputSource is = new InputSource(urlStr.openStream());
			xmlObj = builder.parse(is);
			
			// 루트 엘리먼트 접근
			Element root = xmlObj.getDocumentElement();
			System.out.println(root.getNodeName());
			//-- rss
			
			System.out.printf("title> %s%n", XMLDOM.getText(root, "title"));
			System.out.printf("link> %s%n" ,XMLDOM.getText(root, "link"));
			System.out.printf("description> %s%n", XMLDOM.getText(root, "description"));
			System.out.printf("pubDate> %s%n", XMLDOM.getText(root, "pubDate"));
			
			NodeList itemNodeList = root.getElementsByTagName("item");
			
			System.out.println("주요 기사 ------------------------------");
			for (int i = 0; i < itemNodeList.getLength(); i++)
			{
				Node itemNode = itemNodeList.item(i);
				Element itemElement = (Element)itemNode;
				
				
				System.out.printf("title> %s%n", XMLDOM.getText(itemElement, "title"));
				System.out.printf("description> %s%n", XMLDOM.getText(itemElement, "description"));
				System.out.printf("link> %s%n", XMLDOM.getText(itemElement, "link"));
				System.out.printf("pubDate> %s%n", XMLDOM.getText(itemElement, "pubDate"));
				
				System.out.println();
			}
			
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
	}
	
	
	
	
	
	

}
