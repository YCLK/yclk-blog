+++
title = '크롬 확장 프로그램 추천'
summary = "🐉 크롬을 비롯한 크로미움 기반 브라우저에서 활용할 수 있는 확장 프로그램 추천"
date = 2025-11-30T13:59:03+09:00
categories = ["추천"]
tags = ["크롬", "크로미움", "브라우저", "확장", "확장프로그램", "익스텐션"]
draft = false
+++

# | 들어가며
안녕하세요! 루크입니다 :)
이번 포스팅에서는 제가 필수로 설치하는 크롬 확장 프로그램들을 추천하는 글을 작성하려고 합니다. 크로미움 기반의 브라우저를 사용하신다면 모두 호환될 것이고 이 중 일부는 파이어폭스에서도 사용하실 수 있습니다!

# | Add to Pinry
[Add to Pinry - Chrome Web Store](https://chromewebstore.google.com/detail/add-to-pinry/jmhdcnmfkglikfjafdmdikoonedgijpa)

운영하는 Pinry 서버에 쉽게 사진을 추가할 수 있는 확장 프로그램입니다. 짤방 저장용, 사진 자료 저장용으로 유용하게 사용하고 있습니다. 셀프 호스팅 방법이 그리 어렵지 않으니 OCI나 홈서버 등을 활용하여 여러분만의 핀터레스트를 구축해 보세요!

# | AHA Music
[AHA Music - Chrome Web Store](https://chromewebstore.google.com/detail/aha-music-%EB%B8%8C%EB%9D%BC%EC%9A%B0%EC%A0%80-%EC%9A%A9-%EB%85%B8%EB%9E%98-%EC%B0%BE%EA%B8%B0/dpacanjfikmhoddligfbehkpomnbgblf)

유튜브 BGM 서치용으로 사용합니다. 정확도가 그렇게 높지는 않지만... 구글/네이버 노래 검색에서는 나오지 않는 곡들을 찾을 수 있어 꽤 유용합니다.

# | Bitwarden
[Bitwarden Password Manager - Chrome Web Store](https://chromewebstore.google.com/detail/bitwarden-password-manage/nngceckbapebfimnlniiiahkandclblb)

크로스 플랫폼 오픈소스 비밀번호 관리 서비스입니다. 원래 크롬(구글) 기본 비밀번호 저장 서비스를 사용했었는데 안되는 곳도 있고 해서 불편한 경우가 꽤나 있더라고요. 공식 서버에 무료 요금제로 사용하다가 OTP 기능이 너무 탐나서 얼마 전에 셀프 호스팅으로 넘어왔습니다. 도커로 Vaultwarden을 올리면 기능 그대로 사용하실 수 있고 구축 난이도도 Pinry만큼 쉽습니다!

안드로이드 + 윈도우 + 리눅스 어느 곳에서도 쉽게 사용할 수 있어서 만족입니다. 비밀번호 관리도 매우 편해졌습니다. ~~다만 마스터 비밀번호나 서버가 털리면 끝이라는 점..~~ 그래도 Vaultwarden만 좀 더 꼼꼼하게 업데이트 해주면 되니까.. 괜찮다고 생각합니다 ㅎㅎ

# | Dark Reader
[Dark Reader - Chrome Web Store](https://chromewebstore.google.com/detail/dark-reader/eimadpbcbfnmbkopoojfekhnkhdbieeh)

다크모드를 지원하지 않는 페이지에 강제로 다크모드를 적용할 수 있는 확장 프로그램입니다. 요즘 대부분 다크모드를 지원하는 지라 사용할 일이 많지는 않지만 네이버 계열 사이트나 오래된 사이트 같은 곳에서는 요긴하게 잘 사용하고 있습니다. 다크모드를 지원하는 사이트에서도 사용하면 가독성이 떨어지는 감이 있는 것 같아서 `사이트 목록 -> 포함된 사이트 목록`으로 설정해 두고 필요한 사이트만 추가해 사용하고 있습니다!

# | Enhancer for YouTube
[Enhancer for YouTube™ - Chrome Web Store](https://chromewebstore.google.com/detail/enhancer-for-youtube/ponfpcnoihfmfllpaingbgckeeldkhle)

유튜브 달고 사는 사람에게는 필수(!) 기능이 꽤 많이 있는데 바에서 자주 사용하는 건 스크롤로 배속 조절, 스크린샷 바로 저장 정도!

사실 저건 부가적인거고 유튜브 쇼츠가 너무 꼴보기 싫어서(ㅎ) 씁니다. 다른 것도 많이 써봤는데 이게 제일 깔끔하게 사라지고 변환돼요.

절대 안되겠지만.. 숏폼이 기본인 플랫폼이 아니라면 기본 설정으로 껐다 킬 수 있었으면 좋겠음. 뭐 여기에 대한 의견은 의사마다 학자마다 조금씩 다른 것 같은데 제가 직접 몸소 겪은 바로는 득보다 실이 너무 많습니다. ㄹㅇ 멍청해지는 기분

```json
{
  "version": "3.0.14",
  "settings": {
    "applyvideofilters": false,
    "backdropcolor": "#000000",
    "backdropopacity": 85,
    "blackbars": false,
    "blockautoplay": true,
    "blockhfrformats": false,
    "blockwebmformats": false,
    "boostvolume": false,
    "cinemamode": false,
    "cinemamodewideplayer": false,
    "controlbar": {
      "active": true,
      "autohide": false,
      "centered": true,
      "position": "absolute"
    },
    "controls": [
      "loop",
      "reverse-playlist",
      "volume-booster",
      "cards-end-screens",
      "cinema-mode",
      "size",
      "pop-up-player",
      "speed",
      "video-filters",
      "screenshot",
      "options"
    ],
    "controlsvisible": false,
    "controlspeed": true,
    "controlspeedmousebutton": false,
    "controlvolume": false,
    "controlvolumemousebutton": false,
    "convertshorts": true,
    "customcolors": {
      "--dimmer-text": "#cccccc",
      "--hover-background": "#232323",
      "--main-background": "#111111",
      "--main-color": "#ff0033",
      "--main-text": "#eff0f1",
      "--second-background": "#181818",
      "--shadow": "#000000"
    },
    "customcss": "",
    "customscript": "",
    "customtheme": false,
    "darktheme": true,
    "date": 1737948839632,
    "defaultvolume": false,
    "disableautoplay": true,
    "executescript": false,
    "expanddescription": false,
    "filter": "none",
    "griditemsperrow": {
      "channel": {
        "shorts": {
          "apply": false,
          "count": 5
        },
        "videos": {
          "apply": false,
          "count": 4
        }
      },
      "posts": {
        "apply": false,
        "count": 4
      },
      "shorts": {
        "apply": false,
        "count": 8
      },
      "videos": {
        "apply": false,
        "count": 4
      }
    },
    "hidecardsendscreens": false,
    "hidechat": false,
    "hidecomments": false,
    "hiderelated": false,
    "hideshorts": true,
    "ignoreplaylists": true,
    "ignorepopupplayer": true,
    "localecode": "ko",
    "localedir": "ltr",
    "miniplayer": true,
    "miniplayerposition": "top-left",
    "miniplayersize": "480x270",
    "newestcomments": false,
    "overridespeeds": true,
    "pauseforegroundtab": false,
    "pausevideos": true,
    "popuplayersize": "640x360",
    "previousversion": "0.0.0",
    "qualityembeds": "large",
    "qualityembedsfullscreen": "hd1080",
    "qualityplaylists": "hd1080",
    "qualityplaylistsfullscreen": "hd1080",
    "qualityvideos": "hd1080",
    "qualityvideosfullscreen": "hd1080",
    "reload": false,
    "reversemousewheeldirection": false,
    "selectquality": true,
    "selectqualityfullscreenoff": false,
    "selectqualityfullscreenon": true,
    "speed": 1,
    "speedvariation": 0.25,
    "stopvideos": false,
    "theatermode": false,
    "theme": "enhanced-dark",
    "themevariant": "dark-steel-blue.css",
    "update": 1737948839632,
    "vendorthemevariant": "youtube-deep-dark.css",
    "videofilters": {
      "blur": 0,
      "brightness": 100,
      "contrast": 100,
      "grayscale": 0,
      "inversion": 0,
      "rotation": 0,
      "saturation": 100,
      "sepia": 0
    },
    "volume": 50,
    "volumemultiplier": 2,
    "volumevariation": 5,
    "whatsnew": false,
    "wideplayer": false,
    "wideplayerviewport": false
  }
}
```

# | GoFullPage - Full Page Screen Capture
[GoFullPage - Full Page Screen Capture](https://chromewebstore.google.com/detail/gofullpage-full-page-scre/fdpohaocaechififmbbbbbknoalclacl)

현재 페이지 전체를 캡처하는 확장 프로그램입니다.
왓챠 등 OTT에서 스크린샷을 촬영할 때에도 유용합니다.

# | Twitter Video Downloader
[Twitter video downloader - Chrome Web Store](https://chromewebstore.google.com/detail/twitter-video-downloader/akmdionenlnfcipmdhbhcnkighafmdha)

지금까지 썼던 트위터 영상 다운로드 확장 프로그램 중에서 제일 좋습니다.
따로 웹사이트 거치는 게 아니라 바로 다운할 수 있어서 화질도 안 깨지고 매우 편합니다 추천해요!

# | Get cookies.txt LOCALLY
[Get cookies.txt LOCALLY - Chrome Web Store](https://chromewebstore.google.com/detail/get-cookiestxt-locally/cclelndahbckbenkjhflpdbgdldlbecc)

한 때 개인정보 유출 문제가 있었던 `Get cookies.txt`가 없어지고 새롭게 나타난 확장 프로그램입니다. 가끔 쿠키 추출해야 할 때 (`Hitomi Downloader` 등..) 유용하게 사용합니다.

# | WhatFont
[WhatFont - Chrome Web Store](https://chromewebstore.google.com/detail/whatfont/jabopobgcpjmedljpbcaablpmlmfcogm)
현재 페이지의 폰트를 알려주는 확장 프로그램입니다. 웹 디자인 할 때 유용하게 사용합니다..ㅎㅎ

# | ColorZilla
[ColorZilla - Chrome Web Store](https://chromewebstore.google.com/detail/colorzilla/bhlhnicpbhignbdhedgjhgdocnmhomnp)
현재 페이지의 컬러코드를 알려주는 확장 프로그램입니다. 역시 웹 디자인 할 때 유용하게 사용합니다.

# | Volume Master
[Volume Master - Chrome Web Store](https://chromewebstore.google.com/detail/volume-master-%EB%B3%BC%EB%A5%A8-%EC%BB%A8%ED%8A%B8%EB%A1%A4%EB%9F%AC/jghecgabfgfdldnmbfkhmffcabddioke)

볼륨을 0~500%로 조절할 수 있는 확장 프로그램입니다. 간혹 볼륨이 너무 낮은 페이지의 볼륨을 증폭하기 위해 사용합니다.

# | Tampermonkey
[Tampermonkey - Chrome Web Store](https://chromewebstore.google.com/detail/dhdgffkkebhmkfjojejmpbldmpobfkfo?utm_source=item-share-cb)

유저 스크립트를 쉽게 로드할 수 있는 확장 프로그램입니다.

# | Save to Notion
[Save to Notion - Chrome Web Store](https://chromewebstore.google.com/detail/save-to-notion/ldmmifpegigmeammaeckplhnjbbpccmm)
[Notion Web Clipper - Chrome Web Store](https://chromewebstore.google.com/detail/knheggckgoiihginacbkhaalnibhilkk?utm_source=item-share-cb)

노션을 통한 페이지 북마크를 위해 사용합니다. Save to Notion이 더 기능이 좋아 이를 주로 사용했었지만 버그가 꽤 있는 것 같아 최근에는 공식 확장 프로그램인 Notion Web Clipper를 더 자주 사용합니다.

# | Save All Resources
[Save All Resources - Chrome Web Store](https://chromewebstore.google.com/detail/abpdnfjocnmdomablahdcfnoggeeiedb?utm_source=item-share-cb)

현재 페이지 내 모든 리소스를 다운로드 해주는 확장 프로그램입니다.

# | Image Downloader
[Image Downloader - Chrome Web Store](https://chromewebstore.google.com/detail/cnpniohnfphhjihaiiggeabnkjhpaldj?utm_source=item-share-cb)

웹페이지 내 모든 이미지를 검색해 다운로드 할 수 있게 해주는 확장 프로그램입니다.

# | Proton VPN
[Proton VPN: Fast & Secure - Chrome Web Store](https://chromewebstore.google.com/detail/jplgfhpmjnbigmhklmmbgecoobifkmpa?utm_source=item-share-cb)

무료 VPN 중에는 이게 제일 괜찮았습니다. 그런데 확실히 VPN은 유료로 이용하는 게 맞는 것 같습니다. 최근에 NordVPN 이벤트로 1년 받아 사용하고 있는데 확실히 좋군요...

# | 우클릭 차단 종결자
[우클릭 차단 종결자 - Chrome Web Store](https://chromewebstore.google.com/detail/emfeppdfcjnldjgmofdkbggeacapegen?utm_source=item-share-cb)

사실 개발자 도구에서 자바스크립트를 비활성화 시켜주면 됩니다..만.. 가끔 안되는 곳들이 있고 이게 더 편하기 때문에 사용합니다.

# | Better Surf
[Better Surf - Chrome Web Store](https://chromewebstore.google.com/detail/better-surf/jhpnholkflkpnadabmadfcfgnbekijjf)

트위터(현 X)의 현빈님께서 개발하신 확장 프로그램입니다. 트위터 요소 제거 및 기계 번역 비활성화를 위해 사용합니다.

# | PIP(Picture in Picture)
[PIP(Picture in Picture) - Chrome Web Store](https://chromewebstore.google.com/detail/gmehookibnphigonphocphhcepbijeen?utm_source=item-share-cb)

왓챠에서 PIP를 활용하기 위해 사용합니다.