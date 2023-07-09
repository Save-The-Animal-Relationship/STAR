# STAR(Save The Animal Relationship) -JSP Project

<h1>예비 반려인 돌봄 서비스를 통한 유기 방지 서비스</h1>


<h2>1. 기획 의도</h2>

<img src="https://github.com/developerSik/STAR/assets/129861070/2207c3c0-33bf-4283-bbaa-e6226de414bb" style = "width: 80%; height : 480">
<img src="https://github.com/developerSik/STAR/assets/129861070/13cb6c77-e269-4705-92df-593aa3fa6b01" style = "width: 80%; height : 480">



최근 애완동물 유기비율이 급격히 오르고 있다.<br>
수많은 원인중 하나는 바로 애완동물을 기르고 마음에 입양했다가, <br>
막상 입양해보니 기르는게 힘들거나, 주변인의 알러지같은 생각지도 못한 곳에 문제가 있을 수 있다.<br>
<strong>이를 막기위해 나온것이 STAR이다.</strong> <br>

</div>


<h2>2. 기대 효과</h2>


1. 판매자는 폐기 예정이었던 재고를 판매함으로써 수익 창출✔<br>
2. 소비자는 합리적인 가격에 식품 구매✔<br>
3. 음식물 쓰레기 폐기량을 줄여 사회적 비용 절감✔<br>


<h2>3. 프로젝트 사용 툴</h2>
- Java<br>
- Java Script<br>
- tomcat<br>
- jQuery<br>
- MyBatis<br>
- JSP<br>
- MySQL<br>
- DBeaver<br>
- Sourcetree<br>
- git, github<br>
- JSON<br>
- Ajax<br>
- JDK 11.0.15<br>
- Bootpay API<br>

<h2>4. ERD</h2>

<img src="https://github.com/Yunkihong-Dev/Tikkeul-Project/assets/81303136/6f67a89f-edb6-4ed8-a9fc-b085029a0f1d"  style = "width: 80%; height : 480">

  
<h2>5. 담당 업무</h2>
5-1 퍼블리싱<br>

![image](https://github.com/Developer-Kimchi/eats-time/assets/129861604/56011819-c4c3-4328-a4bb-d6dda1e641bc)



▶ 고객센터
- 공지사항 목록
- 공지사항 게시글 상세
- 1:1 문의 목록
- 1:1 문의 등록

<br>
5-2 백엔드<br>

![image](https://github.com/Developer-Kimchi/eats-time/assets/129861604/2ec5d3e5-0097-407a-b658-e943b928a2d0)


▶ 공지사항(관리자 페이지, 전체)
- 공지사항 전체 목록 조회
- 공지사항 상세 조회
- 공지사항 작성
- 공지사항 수정
- 공지사항 삭제


<h2>6. 느낀점</h2>
<h3>6-1. 어려웠던 부분</h3>
📌Front Contoller와 Controller에서 경로를 설정하는 것이 어려웠습니다. <br>
✔ 우선 제가 어떤 페이지로 이동하고 싶은 지에 대해 생각했습니다. 이를 바탕으로 Front Controller부터 차근차근 요청시 응답해줄 페이지와 동작을 그려나갔습니다.<br><br>
<br>
📌오류가 정확히 어디서 발생했는지 찾고 해결하는 과정이 어려웠습니다. <br>
✔ 서버에 요청시 진입하는 구간마다 System.out.println()을 사용하여 출력 콘솔창에서 문제가 표시된 부분을 찾아내 고쳤습니다.<br><br>
<br>
📌게시글 선택삭제/전체삭제 시 체크된 게시물만 삭제 처리하는 것에 어려움을 겪었습니다. <br>
✔ 체크된 체크박스와 인덱스가 일치하는 게시글을 컨트롤러로 가져와 반복문을 통해 삭제하였습니다.<br><br>
<br>

<h3>6-2. 총평</h3>
 혼자 앓지 말자<br>
 이번 프로젝트는 웹개발을 배우기 시작한 이후 처음으로 진행하는 프로젝트였습니다. 그런 만큼 모든 게 생소하고 막막한 게 당연합니다.<br>
작업 초기에는 어려움을 맞딱뜨릴 때 마다 혼자 해결하려고 했습니다. 그러다 보니 진척이 되지 않고 상황이 더 복잡해져만 갔습니다.<br>
하지만 제 주변에는 도와줄 사람이 많았습니다. 그들에게 도움을 요청했을 때 제가 몇 시간 고민했던 일을 곧바로 해결하고 시간을 절감할 수 있었습니다.<br>
학원에서 팀프로젝트를 진행한 목적 중 하나가 이것이라 생각합니다. 제가 팀원들에게 도움을 받을 수도, 도움을 줄 수도 있습니다.<br>
이렇게 상호 협력하면 일을 더 빨리 진척 시킬 수 있고 절약된 시간 만큼 완성도를 더 높일 수 있습니다. 개발을 할 때 소통과 협업의 중요성을 여기서 깨달았습니다.<br>
