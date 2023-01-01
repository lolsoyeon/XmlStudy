SELECT USER
FROM DUAL;
--==>> KIWI03


SELECT *
FROM all_tables;

SELECT 'DROP TABLE "' || TABLE_NAME || '" CASCADE CONSTRAINTS;' FROM user_tables;

SELECT *
FROM V;

DESC POS_PET_KIND;

INSERT INTO POS_PET_KIND(P_PET_KIN_ID, P_PET_KIND)
VALUES(1,'강아지');
INSERT INTO POS_PET_KIND(P_PET_KIN_ID, P_PET_KIND)
VALUES(2,'고양이');


SELECT *
FROM POS_PET_KIND;



COMMIT;
ROLLBACK;

DESC POS_PET_SIZE;

SELECT *                                     
FROM POS_PET_SIZE;


INSERT INTO POS_PET_SIZE(P_PET_ID, P_PETSIZE)
VALUES(1,'대형');
INSERT INTO POS_PET_SIZE(P_PET_ID, P_PETSIZE)
VALUES(2,'중형');
INSERT INTO POS_PET_SIZE(P_PET_ID, P_PETSIZE)
VALUES(3,'소형');



UPDATE POS_PET_SIZE
SET P_PETSIZE='대형'
WHERE P_PET_ID=3;


DESC CARE_TYPE;

SELECT *
FROM CARE_TYPE;


INSERT INTO CARE_TYPE(C_TYPE_ID, C_TYPE_NAME)
VALUES(1, '타임케어');

INSERT INTO CARE_TYPE(C_TYPE_ID, C_TYPE_NAME)
VALUES(2, '데이케어');

SELECT *
FROM KIND
ORDER BY D_OR_CAT_ID;

SELECT *
FROM DOG_OR_CAT;

DESC KIND;

INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(1, '시베리아허스키', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(2, '푸들', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(3, '셰퍼드', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(4, '알래스칸 맬러뮤트', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(5, '도베르만', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(6, '리트리버', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(7, '베들링턴 테이러', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(8, '그레이 하운드', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(9, '웰시코기', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(10, '사모예드', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(11, '시바이누', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(12, '스피츠', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(13, '슈나우저', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(14, '비숑프리제', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(15, '시츄', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(16, '잭 러셀 테리어', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(17, '포메라니안', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(18, '미니어처 핀셔', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(19, '파피용', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(20, '요크셔 테리어', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(21, '말티즈', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(22, '닥스훈트', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(23, '치와와', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(24, '퍼그', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(25, '프렌치불독', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(26, '꼬똥 드 툴레아', 1);


UPDATE KIND
SET KIND_NAME='페르시안'
WHERE KIND_ID=27;

INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(27, '페르시안', 2);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(28, '러시안블루', 2);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(29, '아메리칸숏헤어', 2);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(30, '브리티쉬숏헤어', 2);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(31, '벵갈', 2);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(32, '아비시니안', 2);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(33, '스코티시폴드', 2);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(34, '스핑크스', 2);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(35, '소말리', 2);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(36, '먼치킨', 2);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(37, '랙돌', 2);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(38, '터키쉬앙고라', 2);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(39, '노르웨이 숲', 2);

INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(40, '기타', 1);
INSERT INTO KIND(KIND_ID, KIND_NAME, D_OR_CAT_ID)
VALUES(41, '기타', 2);

-- 모든 시퀀스 조회
SELECT * 
FROM USER_SEQUENCES;


DESC ADMIN;

SELECT *
FROM ADMIN;

DELETE
FROM ADMIN;

INSERT INTO ADMIN(ADM_ID, ADM_PW)
VALUES('kiwi', '1234');

INSERT INTO FAQ_TYPE(FAQ_TYPE_ID, FAQ_TYPE)
VALUES(1, '의뢰인을 위한 FAQ');
INSERT INTO FAQ_TYPE(FAQ_TYPE_ID, FAQ_TYPE)
VALUES(2, '펫시터를 위한 FAQ');


COMMIT;
ROLLBACK;


-- FAQ_TYPE
SELECT *
FROM FAQ_TYPE;

DELETE
FROM FAQ_TYPE;

DESC FAQ_TYPE;

ALTER TABLE FAQ_TYPE MODIFY (FAQ_TYPE VARCHAR2(50));

COMMIT;
ROLLBACK;


-- FAQ


SELECT *
FROM FAQ;

DELETE
FROM FAQ;

DESC FAQ;


CREATE SEQUENCE SEQ_FAQ
INCREMENT BY 1
START WITH 100
MINVALUE 100
MAXVALUE 99999
NOCYCLE
NOCACHE
ORDER;



DELETE
FROM FAQ;


DROP SEQUENCE SEQ_FAQ;
--==>> Sequence SEQ_FAQ이(가) 삭제되었습니다.

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '키위는 어떤 서비스를 제공하나요?', '방문 서비스, 위탁 서비스 등 다양한 서비스 옵션을 제공하고 있습니다.', 'kiwi', 1);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '펫시팅 비용이 얼마인가요?', '펫시팅은 타임 케어와 데이 케어로 나눌 수 있습니다. 소형견을 기준으로 타임 케어는 기본금(15,000)에 시간당 2,000원이 추가됩니다. 데이 케어의 경우 일 50,000원으로 책정되어 있습니다. 또한 등급에 따라서 가격이 상이하므로 참고 바랍니다.', 'kiwi', 1);


INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '고양이도 위탁 서비스가 가능한가요?', '고양이의 경우도 가능은 합니다. 하지만 영역성이 강한 본능적 특성 때문에, 환경이 바뀌면 스트레스를 받을 가능성이 크기에 위탁 서비스 이용을 지양합니다.', 'kiwi', 1);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '서비스에 대한 비용 결제는 언제되나요?', '키위는 의뢰자님이 서비스를 요청함과 동시에 결제가 이루어집니다.', 'kiwi', 1);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '펫시팅전에 필요한 준비사항은 뭐가 있나요?', '기본적인 준비물들은 배변패드, 배변판, 배식 도구, 사료, 강아지 인식표 및 산책도구 등이 있습니다. 또한 펫시팅을 맡기기 위해서 기본적인  5차 접종이 꼭 완료되어야 합니다.', 'kiwi', 1);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '서비스 상태는 무엇인가요?', '· 수락 대기중 - 펫시터에게 서비스 예약 요청을 보냈으나 펫시터가 아직 수락을 하지 않은 경우
·거절 - 펫시터가 24시간 이내 거절하는경우, 예약 요청 후 24시간이 지난 경우
·서비스 진행 예정 - 펫시터가 예약 요청을 수락한 상태
·서비스 진행중 - 해당 날짜가 되어 서비스가 진행중
·서비스 진행완료- 서비스가 완료된 경우
·기간만료 - 기간 내에 펫시터를 구하지 못하고 기간이 지난상태', 'kiwi', 1);


INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '예약 취소 및 환불 규정은 어떻게 되나요?', '·의뢰인이 취소하는 경우    펫시팅 시작일 72시간전까지                      100% 환불
펫시팅 시작일 48시간부터 24시간전까지                  50% 환불
펫시팅 시작 24시간전                                  환불 불가
·의뢰인이 펫 프로필을                        환불 불가
다르게 작성한 경우
·펫시터의 귀책사유로 인한 경우      모든 경우                                      100% 환불', 'kiwi', 1);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '예약 완료 후 펫시터가 예약을 취소하면 어떻게 하나요?', '원칙적으로 펫시터는 취소가 불가능 합니다.', 'kiwi', 1);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '반려동물을 추가하면 비용이 어떻게 되나요?', '맡기시는 반려동물이 2마리 이상일 경우에 타임 케어와 데이 케어 모두 총액에서 마리 당 10,000원이 할인됩니다.', 'kiwi', 1);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '예약이 확정되고 난 후, 날짜를 변경하고 싶어요!', '날짜를 다시 변경하고 싶은 경우, 예약을 취소 하고 다시 예약 요청을 하셔야 합니다.', 'KIWI', 1);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '긴급 요청 서비스가 무엇인가요?', '·긴급 요청 서비스는 의뢰인이 원하는 펫시팅 시작일 72시간 전부터 1시간 사이의 기간에 서비스 요청을 등록하여 펫시터의 지원을 받고
한 명의 펫시터를 고르는 시스템입니다.', 'kiwi', 1);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '일반 서비스(위탁, 방문)가 무엇인가요?', '·일반 서비스(위탁, 방문)는 펫시팅 시작일 72시간 이상 여유가 있다면 원하는 펫시터에게 펫시팅 예약을 신청하는 시스템입니다.', 'kiwi', 1);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '서비스 이용중 반려동물이 아프거나 다치면 어떻게 하나요?', '펫시팅 도중 반려동물의 건강에 이상이 생긴 경우, 사전에 펫시터님과 고객님께서 정한 병원으로 즉시 이송하여 진단, 치료를 받을 수 
     있습니다. 진단 및 치료 후 수의학적 판단에 의한 과실 여부에 따라 펫플래닛의 프리미엄 안전 보상 프로그램을 적용 받으실 수 있습니다.', 'kiwi', 1);


INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '반려동물 등록 및 수정, 삭제를 어떻게 하나요?', '메인페이지의  나의 펫 정보에서 관리가  가능합니다.', 'kiwi', 1);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '아이디랑 비밀번호를 잃어버렸어요. 어떻게 다시 찾죠?', '로그인 페이지에서 아이디,비밀번호 찾기 버튼을 누르면 아이디 혹은 비밀번호를 찾을 수 있는 페이지로 이동합니다.', 'kiwi', 1);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '서비스 진행중 서비스 기간 연장이 가능한가요?', '키위 정책상 불가능 합니다. 추가로 필요할 경우 서비스 요청을 해주시면 됩니다.', 'kiwi', 1);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '쪽지 기능은 무엇입니까?', '방문 서비스, 위탁 서비스 등 다양한 서비스 옵션을 제공하고 있습니다.', 'kiwi', 1);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '서비스 중에 노쇼 버튼은 왜 필요한가요?', '서비스 개시 후 의뢰인 또는 펫시터중에서 서비스의 준비가 된 측에서 상대방이 노쇼(예약부도 행위)를 하였다고 
판단하였을 경우 노쇼를 버튼을 누르시게되면 플랫폼이 정한 귀책사유 정책 및 입장에 따라 환불 및 경고 처리 됩니다. 
', 'kiwi', 1);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '키위를 탈퇴하고 싶어요. 어떻게 하나요?', '마이페이지에 탈퇴하기 버튼이 있습니다. 진행중인 서비스가 있거나 요청된 서비스가  있다면 탈퇴가 불가능 합니다. 회원 탈퇴시 이전의 쪽지와, 일지는 모두 볼 수 없게 됩니다. 또한 탈퇴 후 1년이내 재가입이 불가능 합니다. 신중히 진행해 주세요', 'kiwi', 1);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '펫시터는 어떻게 지원하나요?', '원칙적으로 펫시터는 취소가 불가능 합니다.', 'kiwi', 1);


INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '펫시터 지원 자격을 알고 싶어요', '·이런 분과 함께하고 있습니다.
·모든 일에 있어서 책임감이 강해요
·고객에게 친절하게 응대할 수 있어요
·시간 약속은 철저하게 지켜요', 'kiwi', 1);

ALTER TABLE FAQ MODIFY (FAQ_CONTENT VARCHAR2(700));



INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '펫시터가 하는 업무(방문, 위탁, 긴급)은 무엇인가요?', '펫시터는 반려동물에 대해 지속적인 관심과 돌봄을 제공하여 아이들이 맡겨진 동안 안전하게 지낼 수 있도록 노력합니다. 야외 산책, 실내놀이뿐만 아니라 견주님들과의 원활한 소통을 원칙으로, 아이들이 안전하게 잘 지내는 모습을 보여줍니다. 추가서비스가 가능한 펫시터들에 한해서 픽업, 목욕, 발톱 관리 등의 서비스도 함께 제공합니다.', 'kiwi', 2);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '서비스 후 어떻게 수입을 정산 받나요?', ' 수입은 서비스 확정 이후 회사 수수료 제외한 금액을 펫시터님 계좌로 정산해드리고 있습니다.', 'kiwi', 2);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '펫시터는 확정된 예약을 취소할 수 있나요?', '원칙적으로 펫시터는 취소가 불가능 합니다.만약 귀책 사유로 취소를 할 경우에는 패널티가 부가되며, 3회 이상 취소(노쇼)시 펫시터 자격을 상실합니다.
경고는 6개월 이후 1개씩 사라집니다. ', 'kiwi', 2);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '요금 책정은 어떤 방식으로 이루어지나요?', '·소형견을 기준으로 타임 케어는 기본금(15,000)에 시간당 2,000원이 추가됩니다. 
·데이 케어의 경우 50,000원으로 책정되어 있습니다. 
·누적 시간과 누적 횟수로 등급이 정해지며 등급이 올라갈수록 기본급이 올라갑니다.', 'kiwi', 2);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '펫시터 회원 등급 금액 차등은 어떤 방식으로 되어있나요?', '새싹              10,000
브론즈           15,000
실버               20,000
골드               25,000', 'kiwi', 2);


INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '승급 기준', '·처음 펫시터가 되면 새싹 등급부터 시작하고 펫시팅 누적 4회(12시간)이상, 가입일 기준 1달 이상 진행시 브론즈로 등급이 올라갑니다. 
·브론즈에서는 펫시팅 누적 10번(60시간), 가입일 기준 3달 이상 충족시 실버로 등급이 올라갑니다.
·실버에서는 펫시팅 누적 30번(180시간), 가입일 기준 6달 이상 충족 시 골드로 등급이 올라갑니다. 또한, 브론즈 -> 실버 : 평균 평점 3.5점 이상 승급 가능
실버 -> 골드 : 평균 평점 4.0이상 승급 가능', 'kiwi', 2);

INSERT INTO FAQ(FAQ_ID, FAQ_TITLE, FAQ_CONTENT, ADM_ID, FAQ_TYPE_ID)
VALUES(SEQ_FAQ.NEXTVAL, '쪽지 기능은 무엇입니까?', '서비스 예약이 완료된 시점부터 서 비스 확정 전까지 의뢰자와 펫시터가 소통할 수 있는 기능입니다.', 'kiwi', 2);



UPDATE FAQ
SET FAQ_CONTENT='새싹              10,000원
브론즈           15,000원
실버               20,000원
골드               25,000원'
WHERE FAQ_ID=127;



select * from user_sequences;