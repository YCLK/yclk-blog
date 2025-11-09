+++
title = '2024년에 쓰는 HP 스트림 13인치 후기'
summary = '💻 2024년에도 쓸만할까? HP 스트림 13인치 사용 후기'
date = 2024-01-13
draft = false
categories = ["리뷰"]
tags = ["HP", "HP스트림", "노트북", "넷북"]
[cover]
image = 'images/cover.png'

+++

안녕하세요! 루크입니다 :)

여느 때와 같이 번개장터와 당근마켓을 드나들며 노트북 매물을 찾던 저는 3만원에 올라온 HP Stream 판매글을 발겼했습니다..ㅎㅎ

![](images/Pasted%20image%2020240112174256.png)

![](images/Pasted%20image%2020240112174322.png)

셀러론 N2480의 2GB램.. 아무리 리눅스 깔아서 간단한 작업만 할 서브 노트북이라지만.. 3만원에 올라온 멀쩡한 노트북이라는 점에.. 일단 냅다 질러보았습니다..ㅋㅋㅋ

제가 구매한 모델은 `HP 스트림 13-C110TU`인데요 셀러론 N2480 / DDR3 2GB / EMMC 32GB의 충격적인 사양에 더 충격적인 Blue 색상을 가진..ㅎㅎ 노트북입니다.

번개장터에 올라오는 매물들을 보면 보통 5만원 아래로 올라오는 것들은 완전 초창기 아톰 들어간 두꺼운 넷북(...)에 배터리도 다 방전된 매물이 허다한데 심지어 배터리도 멀쩡하고 기능상의 하자는 없다고 하시더군요..? 혹시 몰라서 배터리 상태도 여쭤봤는데 오..? 설계 용량=최대 충전 용량이더라고요..? 안 살 이유가 없기에..ㅋㅋㅋㅋ 일단 사고 고민하기로 하며.. 샀습니다

모든 커뮤니티를 돌아다녀도 N 계열 CPU + 2GB 렘은 모두가 뜯어 말리는 조합이지만 전 3만원이라는 가격에 굴복했습니다..ㅎㅎ 거기에 동일 사양의 실제 사용 영상을 본 적이 있는데 생각만큼 느리지는..? 않더라고요 특히나 텍스트 위주의 작업, 동영상 스트리밍 정도의 용도로는요 만약 진짜 못 쓸 정도라도 그냥 치킨값 날린다는 마인드..ㅋㅋ
![](./images/Pasted%20image%2020240112174352.png)
그렇게 처음 채팅을 남긴 이후로 5일만에 노트북을 제 손에 넣게 되었습니다! 왜 5일이나 걸렸나면요.. 처음에 반택으로 배송 받으려고 했는데 한 번 빠꾸먹고 대한통운으로 다시 받아서 그렇습니다.. 하하 다행이 판매자분이 꼼꼼하게 포장해 주셔서 파손 없이 안전하게 도착했던! 실제로 받아보니 충격적일줄 알았던 파란색도 생각보다 예쁘고.. 정이 가더군요..ㅎㅎ

판매자분은 윈도우 10 최신 버전을 깔아 놓으셨더라고요! 윈도우 상태도 생각보다 느리지는 않았지만 어차피 이 노트북으로 하는 일은 한정적일테니 그냥 리눅스 깔아서 쓰기로 결심했습니다 ㅎㅎ 저번에 써봤던 Q45는 렘이 1GB인 탓인지 대부분의 OS가 안 깔려서 32bit Lubuntu 구버전을 설치했었는데요 다행이 Stream은 최신버전 Lubuntu가 무난하게 설치되었습니다 :) EMMC 용량만 64GB였어도 멀티 부팅을 고려 했을텐데 32GB는 반 강재로 하나만 깔아서 써야겠더군요..^^

![](./images/photo_2024-01-12_17-42-20.jpg)
그렇게 Lubuntu를 깔아서 하루를 사용해 봤습니다..만 무언가 불안정한 느낌이 마음에 들지 않더라고요 뭔가.. 드라이버가 전부 잡히지 않은 느낌이랄까..ㅎㅎ 그래서 그 때부터 그냥 윈도우 8이나 10 구버전을 쓸까싶은 마음도 들었지만 그래도 리눅스를 셋팅해서 쓰는 편이 편하고 더 빠를 것 같다는 생각이 들어서 Elementary OS도 깔아보고 잘 쓰던 Pop_OS!도 깔아봤는데 너무 무거웠고요..^-ㅜ Lxqt보다는 무겁겠거니 하고 Linux Mint Xfce를 깔아봤는데 웬걸 Lubuntu보다 안정적이더라고요? 이러다가 또 다른 배포판으로 옮겨갈 수도 있지만 (Arch로 하나하나 셋팅해 보고 싶기는 합니다..ㅎㅎ) 일단 당분간은 민트에 정착하려고요! :D
![](images/Pasted%20image%2020240112173058.png)
다만 거의 모든 배포판에서 발생했던!! BCM43142의 브로드컴 랜/블루투스 드라이버 관련 문제가 있었는데 몇 번의 삽질 끝에! 와이파이의 경우 리눅스 내 추가 드라이버 관련 설정에서 드라이버를 설치해 주면 해결되었고(터미널 명령어로도 가능했습니다) 블루투스는 정말 죽어라 안되다가 아래 명령어로 해결했습니다..ㅎㅎ HP Stream의 경우 유선랜이 없어서 휴대폰 사용하셔서 USB 테더링을 켜주셔야합니다..ㅋㅋㅋㅋㅋㅠ

```
# 와이파이 드라이버 설치
sudo apt install bcmwl-kernel-source 

# 블루투스 드라이버 설치
cd /lib/firmware/brcm
sudo wget https://github.com/winterheart/broadcom-bt-firmware/raw/master/brcm/BCM43142A0-0a5c-216c.hcd

# 부팅 시 블루투스 서비스 자동시작
sudo systemctl enable bluetooth.service

reboot
```
https://forums.linuxmint.com/viewtopic.php?t=388541
https://forums.linuxmint.com/viewtopic.php?t=359555

그리고 윈도우에서는 바로 되었던 멀티터치 제스쳐도 다시 잡아줘야 하더군요..ㅎㅎ [아래 글 참고](https://shanepark.tistory.com/257)해서 Fusuma도 설치해 보았습니다!

```
# input 그룹 생성
newgrp input

# user를 input그룹에 추가
sudo gpasswd -a $USER input

# libinput-tools 설치
sudo apt install libinput-tools

# ruby 설치
sudo apt install ruby

# fusuma 설치
sudo gem install fusuma

# xdotool 설치
sudo apt install xdotool

# 설정 파일 폴더 생성
mkdir -p ~/.config/fusuma

# 설정 파일 만들기
vim ~/.config/fusuma/config.yml
```

config.yml 내용
```
swipe:
  3:
    left:
      command: "xdotool key alt+Right" # History forward
    right:
      command: "xdotool key alt+Left" # History back        
    begin:
      command: xdotool mousedown 1
    update:
      command: xdotool mousemove_relative -- $move_x, $move_y
      interval: 0.01
      accel: 2
    end:
      command: xdotool mouseup 1
  4:
    left:
      command: "xdotool key ctrl+alt+Right" # Switch Workspace
    right:
      command: "xdotool key ctrl+alt+Left" # Switch Workspace

pinch:
  2:
    out:
      command: "xdotool keydown ctrl click 4 keyup ctrl"
    in:
      command: "xdotool keydown ctrl click 5 keyup ctrl"

threshold:
  swipe: 0.5
  pinch: 0.3

interval:
  swipe: 0.5
  pinch: 0.5
swipe:
  3:
    left:
      command: "xdotool key alt+Right" # History forward
    right:
      command: "xdotool key alt+Left" # History back        
    begin:
      command: xdotool mousedown 1
    update:
      command: xdotool mousemove_relative -- $move_x, $move_y
      interval: 0.01
      accel: 2
    end:
      command: xdotool mouseup 1
  4:
    left:
      command: "xdotool key ctrl+alt+Right" # Switch Workspace
    right:
      command: "xdotool key ctrl+alt+Left" # Switch Workspace

pinch:
  2:
    out:
      command: "xdotool keydown ctrl click 4 keyup ctrl"
    in:
      command: "xdotool keydown ctrl click 5 keyup ctrl"

threshold:
  swipe: 0.5
  pinch: 0.3

interval:
  swipe: 0.5
  pinch: 0.5
```

제가 이 노트북을 구매하여 활용하고자 한 것들은

> - 문서(과제) 작성
> - 웹 서핑 및 블로그 작성
> - EBSi등 학습에 사용
> - 음악, 영화, 동영상 등 스트리밍 서비스 활용
> - Parsec등을 활용한 원격제어
> - SSH 접속을 통한 서버 관리

정도가 있었습니다
![](images/photo_2024-01-12_117-42-20.jpg)
실제로 사용해본 결과! 문서 작성은 Google Docs, Libreoffice, Obsidian을 통해 작성해 보았을 때 텍스트 위주 작업에서는 정말 아무 문제 없이 쾌적하게 작성할 수 있었고 PPT의 경우도 아주 무거운 작업을 하는 것이 아닌 이상 서브 노트북의 용도로는 충분했습니다 ㅎㅎ

웹서핑의 경우 Firefox를 사용해 진행해 보았는데요 탭을 아주 많이 띄어놓고 하는 게 아니라면 뭐.. 아주 답답하지 않을 정도의 성능을 보여주었습니다 블로그 작성은 평소 티스토리 에디터를 그리..ㅎㅎ 좋아하는 편은 아니라서 마찬가지로 Obsidian에서 작성하고 이를 복사하여 티스토리에 작성해 보았고 큰 문제 없이 매끄럽게 진행할 수 있었습니다 :)

인터넷 강의 시청의 경우 저는 EBSi만을 사용하기 때문에 플레이어 관련 이슈는 없었고 이미지가 많은 초반 로딩을 제외하면 강의 시청 자체는 쾌적했습니다! 같은 맥락에서 Spotify, Freetube등을 사용했을 때 동영상은 720p는 아주 원활했고 음악 스트리밍도 문제 없었습니다! 블로그 글을 적고있는 지금도 Spotify로 노래를 들으며 작성하고 있습니다 :) 그리고 굳이.. Freetube를 이용한 이유는 그냥 웹 유튜브를 시청해도 되기는하나.. Freetube 같은 써드파티 서비스가 더 쾌적하더군요..ㅎㅎ

Parsec 원격 제어와 Termius를 활용한 SSH 접속도 아무 문제 없이 원활했네요!

그리고 게임하려고 산 노트북은 아니지만! 게임이 어느 정도로 가능할까 싶어서 스타듀밸리와 Virtual Cottage를 깔아보았는데.. 루분투에서는 그냥 멈춰버리더군요..ㅋㅋㅋㅋㅋ N3xxx + 4GB 램에서는 나름 할만할 정도의 퍼포먼스가 나오던데 이건 그 정도는 아닌가 봅니다..ㅎㅎ 게임은 안 하는 걸로!^^.. 인줄 알았으나..ㅋㅋㅋㅋ 민트에서 최적화하고 실행하니까 실행 너무나도 잘 되었고.. 나름 할만한 정도의 퍼포먼스가 나오더군요!ㅋㅋㅋㅋ..

아쉬운 점이라면 원래 가격이 그리 높은 제품은 아니라 그런지 만듦새가 그렇게 좋지는 못하다는 점.. 와이파이 5Ghz 와이파이 지원의 부재로 와이파이가 좀 불안정하다는 점.. TN패널의 시야각..(이 점은 이전 노트북도 TN이라서 저에게 큰 단점은 아니기는 합니다..ㅎㅎ) 그리고 이건 이 제품만의 단점은 아닌데 13인치의 괴랄한(?) 키보드 배열에 적응이 필요하다는 점..ㅋㅋㅋ 정도가 있었습니다

아쉬운 점들도 있었지만 정말 단순한 작업들에서는 아무 문제 없이 사용할 수 있는 x86 머신이 생겼다는 점이 아주 만족스러웠습니다ㅎㅎ 집에 있던 돌덩이(삼성 노트북 5...) 노트북보다 훨씬 가볍고 팬리스 구조라 조용하다는 점도 마음에 들었고요! 무엇보다도 배터리가 멀쩡한 노트북을 3만원에 샀다는 사실에 아쉬운 점이 보이다가도 3만원이라는 가격이 모든 걸 용서하네요ㅋㅋ

이 노트북 관련한 정보나 리눅스 사용 관련해서 공유할 내용 있으면 또 다시 포스팅 해보도록 하겠습니다ㅎㅎ 끝까지 봐주셔서 감사합니다! 공감과 댓글은 큰 힘이 됩니다 :D
