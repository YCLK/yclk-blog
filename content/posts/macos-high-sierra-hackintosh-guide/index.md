+++
title = 'macOS High Sierra (10.13.6) 해킨토시 설치 가이드 (Feat. Opencore 0.9.8)'
summary = '💻 오픈코어를 활용한 해킨토시 macOS High Sierra (10.13.6) 설치 가이드'
date = 2024-02-20
draft = false
categories = ["강좌"]
tags = ["macOS", "Hackintosh", "Opencore", "엔비디아", "해킨토시", "시에라", "하이시에라", "웹드라이버", "오픈코어"]

[cover]
image = 'images/cover.png'
alt = "macOS High Sierra (10.13.6) Screenshot"  # 이미지 대체 텍스트
caption = "macOS High Sierra (10.13.6)"  # 이미지 캡션 (선택사항)
+++

**본 글은 기본적인 해킨토시에 대한 지식은 가지고 있는 분들을 대상으로 작성했습니다. 질문은 언제든지 댓글로 달아주세요 :)**

## | 들어가며

안녕하세요! 루크입니다 :)
macOS가 필요한 환경은 아니지만 리얼맥은 한 번도 사용해보지 못한 터라 항상 해킨을 하고 싶다는 생각은 있었습니다. 하지만 현재 메인으로 사용하는 시스템은 엔비디아 그래픽 카드를 사용하고 있어 하이 시에라 이상의 OS를 올릴 수 없기에(올릴 수는 있지만 가속이 안되어 실사용이 안됩니다 ㅜ.ㅜ) 이번 포스팅에서는 오픈코어를 사용하여 하이 시에라를 설치하는 과정에 대해서 소개하고자 합니다. 클로버로 시도할 수도 있었겠지만 요즘 대세는 Opencore고 트러블슈팅과 추후 다른 시스템을 구성할 때도 용이할 것 같아 Opencore를 고집했습니다 ㅎㅎ 빅서 이전 가이드는 클로버 부트로더를 사용한 사례나 가이드가 많더라고요 :(

## | 필자의 PC 사양

> - CPU: Intel i5 3570
> - M/B: GA-B75M-D3H (rev 1.1)
> - RAM: DDR3 16GB (4GB*4)
> - GPU: Geforce GTX 960
> - LAN: RTL8111 / Audio: ALC887

참고를 위해 제 PC사양도 함께 첨부했습니다. 하이 시에라는 엔비디아 Maxwell(9XX)에서 Pascal(10XX)까지 지원됩니다. 단, 엔비디아라도 예외적으로 Kepler(6XX, 7XX)는 macOS 11, 빅서까지 지원됩니다 :)
![](images/Pasted%20image%2020240824125324.png)
![](images/Pasted%20image%2020240824125327.png)
![](images/Pasted%20image%2020240824125329.png)

## | 부팅 USB 만들기 (Feat. macrecovery)

먼저 부팅 USB를 만들어주겠습니다. 카탈리나 이상의 OS를 올릴 때에는 [엑스팔육](https://x86.co.kr)에 올려주시는 고스트를 활용했는데 (이게 제일 간편하기는 합니다) 클로버 기반 자료가 전부라서 부팅이 안되더군요(제가 못하는 것 같기는 합니다ㅋㅋㅋㅠ..) 그래서 [Dortania 가이드](https://dortania.github.io/OpenCore-Install-Guide/installer-guide/windows-install.html#downloading-macos)에 나와있는 **macrecovery**를 활용하는 방법을 사용했습니다. 

![](images/Pasted%20image%2020240824125335.png)

**Opencore 폴더 -> Utilities -> macrecovery** 경로에 오시면 **macrecovery.py** 파일이 있는 것을 알 수 있습니다. 눈치채셨겠지만 파이썬이 설치되어 있어야 실행이 가능합니다 :) 하이 시에라는 아래 명령어로 복구 이미지를 다운하시면 됩니다.

혹시 다운로드가 안되시는 분들을 위해 [다운로드한 파일](https://drive.google.com/file/d/1b1UL3zNj9x3hqJfYj1XdxG1sa7CJG4VZ/view?usp=sharing)도 압축하여 올려두었습니다 :)

```
python3 macrecovery.py -b Mac-7BA5B2D9E42DDD94 -m 00000000000J80300 download
```

다음으로 USB가 부팅되도록 [Rufus](https://rufus.ie/ko/)를 사용하여 포맷하겠습니다.

![](images/Pasted%20image%2020240824125635.png)

사용할 USB를 선택하고 **부팅 선택 -> 부팅 불가능, 파티션 구성 -> GPT, 볼륨 레이블 -> 원하는 이름**으로 선택합니다.

![](images/Pasted%20image%2020240824125704.png)

포맷한 USB에 다음과 같이 파일을 배치하시면 됩니다. Utility 폴더는 제가 임의로 필요한 유틸리티를 넣은 것입니다 :)

[ESP Mounter Pro.app_v1.9.1.zip](./files/ESP%20Mounter%20Pro.app_v1.9.1.zip)
[Hackintool.zip](./files/Hackintool.zip)

## | EFI 제작 (Feat. Opencore 0.9.8)

솔직히 EFI 제작은 [Dortania 가이드](https://dortania.github.io/OpenCore-Install-Guide/prerequisites.html )만 정독하셔도 쉽게 제작하실 수 있습니다. 초반에 감을 잡기 힘드시다면 가입이 필요한 커뮤니티이긴 하나 [엑스팔육의 글](https://x86.co.kr/info/8285201)을 참고하시면 좋을 것 같습니다 :)

아래는 제가 하이 시에라를 설치하면서 config.plist에서 따로 수정했던 부분입니다.

- 1차 설치 이후 바로 재부팅되며 Opencore 로그에 **"00:000 00:000 OCB: LoadImage failed - Unsupported"** 만 표시되는 문제 발생
  - config.plist 파일에서 **Misc -> Security -> SecureBootModel -> Disabled** 로 수정하고 문제없이 진행되었습니다.

![](images/Pasted%20image%2020240824130117.png)

![](images/Pasted%20image%2020240824130134.png)

- High Sierra 다시 설치 시도 시 **"복구 서버에 접속할 수 없습니다"** 메시지 출력
  - **유틸리티 -> 터미널**에서 아래 명령어 입력하여 해결 (해결은 가능하나 복사 붙어넣기가 되지 않으므로 상대적으로 귀찮음) `nvram IASUCatalogURL="http://swscan.apple.com/content/catalogs/others/index-10.13-10.12-10.11-10.10-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog"`

- **명령어 안 쓰고 EFI의 config.plist 수정하기 (추천)**
  - **NVRAM -> Add -> 7C436110-AB2A-4BBB-A880-FE41995C9F82 -> -> IASUCatalongURL [String으로 추가] ->** `http://swscan.apple.com/content/catalogs/others/index-10.13-10.12-10.11-10.10-10.9-mountainlion-lion-snowleopard-leopard.merged-1.sucatalog` 입력

![](images/Pasted%20image%2020240824130329.png)

엑스팔육에 [해당 글](https://x86.co.kr/qa/8301162)을 올렸고 [아래 글](https://mrmacintosh.com/how-to-fix-the-recovery-server-could-not-be-contacted-error-high-sierra-recovery-is-still-online-but-broken/)에서 **Fix #3 Change the NVRAM Software Update URL**을 참고했습니다.
![](images/Pasted%20image%2020240824130411.png)
참고용으로 제가 작업한 EFI도 올려두겠습니다 :) 시리얼은 직접 생성해 주세요!

[EFI-0.9.8_GA-B75M-D3H.zip](./files/EFI-0.9.8_GA-B75M-D3H.zip)

## | macOS High Sierra 설치

부팅 전 바이오스 세팅부터 변경해 줍니다. Dortania 가이드를 참고하시면 되지만 저는 동일 보드의 [사례](https://jgpark.kr/480)를 보고 설정했습니다.

![](images/Pasted%20image%2020240824132555.png)

앞서 제작한 USB로 부팅하게 되면 `1.Windows` 만 보여서 당황하실 수도 있는데요, **스페이스키**를 눌러주시면 **[USB 이름] (dmg)** 가 표시되는 것을 알 수 있습니다.

![](images/Pasted%20image%2020240824132619.jpg)
![](images/Pasted%20image%2020240824132623.jpg)![](images/Pasted%20image%2020240824132627.jpg)
설치할 디스크를 선택하고 (동일 드라이브를 나누어 사용하는 방법도 있기는 한데, 분리하시는 것이 정신건강에 좋습니다) **포맷 -> APFS, 설계 -> GUID 파티션 맵**으로 포맷(지우기)해줍니다.

![](images/Pasted%20image%2020240824133415.jpg)
![](images/Pasted%20image%2020240824133418.jpg)
![](images/Pasted%20image%2020240824133421.jpg)

macOS 다시 설치를 눌러 각종 약관에 동의하고 포맷한 디스크에 설치합니다.

![](images/Pasted%20image%2020240824133429.jpg)
![](images/Pasted%20image%2020240824133433.jpg)

1차 재부팅 이후에는 2. macOS Installer를 선택하셔야 합니다.

![](images/Pasted%20image%2020240824133505.png)
![](images/Pasted%20image%2020240824133510.png)

그래픽 드라이버는 잡히지 않았지만 하이 시에라가 정상적으로 설치되었습니다 :)

![](images/Pasted%20image%2020240824133517.png)
![](images/Pasted%20image%2020240824133523.png)
![](images/Pasted%20image%2020240824133524.png)

업데이트가 되지 않은 하이 시에라 버전에 맞는 웹 드라이버가 없기에, 앱스토어로 들어가 받을 수 있는 모든 업데이트를 받아주세요. 업데이트를 하며 재부팅하는 동안에는 macOS Installer로 부팅해 주셔야 합니다.

![](images/Pasted%20image%2020240824133530.png)
![](images/Pasted%20image%2020240824133532.png)
![](images/Pasted%20image%2020240824133534.png)

토니맥에 들어가 엔비디아 드라이버를 다운해 줍니다. 업데이트를 모두 마쳤으므로 가장 최신 웹드라이버를 받아주시면 됩니다 :)

![](images/Pasted%20image%2020240824133542.png)

재부팅 후, 정상적으로 그래픽 가속이 잡힌 것을 확인하실 수 있습니다.

![](images/Pasted%20image%2020240824133550.png)
![](images/Pasted%20image%2020240824133555.png)

EFI 파티션을 마운트 하여 기존 EFI는 지워주고, USB에 있는 EFI를 복사해 줍니다.

![](images/Pasted%20image%2020240824133605.png)

사실 지금 시점에서도 하이 시에라를 메인으로 사용하기에 엄청나게 큰 문제는 없지만 지원이 끊긴 앱들이 많기에 몇몇 실사용에 필요한 앱들이(iWorks, 카톡 등..) 다운이 안될 겁니다. 저도 여러 가지 방법을 찾아봤는데 VMware등을 활용해 가상으로 macOS를 설치하신 뒤 구매 기록을 남기고 구버전으로 다운로드하는 방법밖에는 없더라고요. 특히나 최신 버전 macOS로 갈수록 용량도 커지니 상당히 귀찮은 일이긴 합니다만.. 실사용을 위해서는 어쩔 수가 없습니다 ㅜㅜ 제가 기억하기로는 iMovie였던 것 같은데 특정 앱이 macOS 13.5가 필요해서 소노마를 가상으로 올려 구매 기록을 남겼습니다.

저는 [위 영상](https://youtu.be/KfxwVX6RCLA?si=B1cIhCli7vhy6tlF)을 참고했습니다 :)

## | 마무리

![](images/Pasted%20image%2020240824133627.png)

지금까지 오픈코어로 하이 시에라를 설치하는 방법에 대해서 알아보았습니다!ㅎㅎ 아직까지도 엔비디아 그래픽 카드 때문에 하이 시에라를 설치하시는 분들이 꽤나 있는 것 같은데 본 포스팅이 도움이 되었으면 좋겠습니다 :) 언젠가 라데온을 들여온다면 상위 버전으로도 빌드해 보겠습니다. 끝까지 봐주셔서 감사합니다! 공감과 댓글은 큰 힘이 됩니다 :D
