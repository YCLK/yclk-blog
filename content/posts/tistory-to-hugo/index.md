+++
title = '티스토리에서 Hugo로! 나의 블로그 이전기'
summary = '✨ 블로그를 티스토리에서 휴고(Hugo)로 이전하다!'
date = 2024-05-25T20:12:23+09:00
draft = false
tags = ["티스토리", "휴고", "tistory", "hugo"]

[cover]
image = 'images/cover.png'
alt = "Symbol of Tistory to Hugo"
caption = "Symbol of Tistory to Hugo"
+++

## | 들어가며
안녕하세요! 루크입니다 :) 이번 포스팅에서는 제가 티스토리에서 휴고로 블로그를 이전한 이유와 그 과정에 대해서 포스팅하고자 합니다.

## | 티스토리에서 Hugo로 이전하다
기존에 티스토리 블로그를 사용했던 이유는 매우 단순합니다. 많은 기술 블로그가 티스토리라는 플랫폼을 사용하고 있었고, 제 마음에 들었던 `hELLO` 라는 테마가 있었기 때문입니다. 하지만 한가지 계속 거슬리는 점이 있었습니다. 바로 티스토리 자체 에디터가 너무나 불편하다는 점이었죠. 자체 에디터에서'만' 편집한다면 꽤나 편하게 사용할 수 있었지만 다크모드의 부재와 마크다운 언어를 제대로 사용할 수 없다는 점(이건 테마의 문제이긴 합니다만, 마크다운 지원+깔끔한 테마는 찾을 수 없었답니다 ㅜㅜ), 외부에서 글을 복사할 때면 스타일이 깨져 html테그를 뜯거나 메모장을 거쳐야 한다는 점이(사실 이래도 불필요한 태그가 붙어서 거슬립니다..ㅋㅋㅠㅠ) 꽤나 불편했습니다. 글 쓸 시간은 부족한데 매번 이런 스타일 하나 하나까지 신경 쓰는 건 너무나도 힘들 분더러, 글 작성 자체에 초점을 맞추고 싶었습니다.

결정적으로 지난 카카오 데이터 센터 화재로 인한 장애, 개인 도메인 SSL이 발급 되지 않던 사태 등 아무래도 블로그 만큼은 다른 플랫폼에 의존하기보다 마크다운 기반으로 쉽게 작성이 가능하고 무언가 문제가 생기더라도 다른 플랫폼으로 쉽게 옮겨갈 수 있는, 그런 직접 관리할 수 있는 블로그를 만드는 것이 장기적인 관점으로 보았을 때 좋을 것 같다는 생각이 들었습니다. 그 결과 크게 SSG(Hugo) Ghost/WordPress 정도로 이전하는 게 좋겠다는 생각이 들었는데 최종적으로는 정적 사이트가 훨씬 관리하기 편할 것 같아서 Hugo로 결정했습니다. (티스토리, 고스트, 워드프레스도 아니었는데 깔끔하고 예쁜 테마를 발견했는데요, 그게 Hugo의 PaperMod였습니다!)

## | 블로그 이전기
플랫폼도 정했겠다 본격적인 블로그 이전을 시작했습니다. 평소에 깃을 전혀 안 써서 조금 해맨 부분이 있는데요, 깃허브를 통해 배포하는 경우를 기준으로 설명해 보겠습니다. 크게 `YCLK/YCLK_Blog`, `YCLK/yclk.github.io` 두 개의 리포지토리가 필요한데요, `YCLK/YCLK_Blog`에 모든 파일이 포함된 파일이 올라가고, `YCLK/yclk.github.io`라는 리포지토리를 서브모듈로 등록하는 구조입니다. Hugo를 통해 빌드를 진행하면 각종 html파일들이 생기는 `public`폴더가 생기는데 이 파일들이 `YCLK/yclk.github.io`를 통해 관리되는 것입니다. 단! 이때 배포용 리포지토리만 `Readme.md`를 생성해 주셔야합니다. **리포지토리 안에 아무 내용도 없으면 정상적으로 submodule 추가가 안됩니다!**

먼저 Hugo를 설치해 줍시다. 여러가지 방법이 있는데 저는 윈도우에서 Chocolatey를 자주 사용하기 때문에 Chocolatey를 활용해 줬습니다.

```
choco install hugo
```

```bash
# yaml 포맷의 새로운 사이트를 생성
hugo new site <폴더명> --format yaml
cd <폴더명>
```

생성한 경로로 이동 후 깃 사용을 위해 초기화를 해주고 메인 저장소를 remote origin으로 추가합니다

```bash
# PaperMod 테마 추가
git init

git submodule add --depth=1 https://github.com/adityatelange/hugo-PaperMod.git themes/PaperMod
```

```bash
# hugo.yaml에 아래 내용 추가
theme: ["PaperMod"]
```

```bash
# YCLK_Blog 리포지토리 추가
git remote add origin https://github.com/<깃허브 이름>/<블로그 저장 레포>.git
git add .
git commit -m "<커밋문구>"
git push origin master
```

```bash
# yclk.github.io 리포지토리 추가
git submodule add -b main https://github.com/<깃허브 이름>/<웹 배포 레포>.git public

cd public
git add .
git commit -m "<커밋문구>"
git push origin main

cd ..
git add .
git commit -m "<커밋문구>"
git push origin master
```

```bash
#포스트 생성 및 로컬 확인, post 이름은 달라도 무방하며 posts/dev/python 과 같이 확장할 수도 있음
hugo new post/hello.md 
hugo server -D
```

```bash
# 원격 저장소 업데이트
cd public
git add .
git commit -m "<커밋 메시지>"
git push origin main

cd ..
git add .
git commit -m "<커밋 메시지>"
git push origin master
```

이렇게 업데이트를 한 뒤 `https://yclk.github.io`로 접속하면 당연하게도(!) 테마가 적용이 되지 않습니다!ㅋㅋㅠ

![](images/Pasted%20image%2020240914111142.png)

![](images/Pasted%20image%2020240914111134.png)

당황하지 않고 `hugo.yaml`의 params --> assets에 `disableFingerprinting`을 `true`로 입력해주면 정상적으로 적용이 되는 것을 알 수 있습니다!

```yaml
params:
  assets:
    disableFingerprinting: true # 테마 적용 안되는 이슈 해결
```

## | 마치며
기업에서 제공하는 블로그 서비스만 사용하다가 처음으로 SSG를 사용하는 것이라 걱정도 많았고 처음에는 "다시 티스토리를 써야하나.." 같은 고민도 많았어요. 각자 장단점이 있지만 Hugo에 완벽하게 적응한 지금은 티스토리를 사용할 때보다 훨씬 편하게 포스팅 하고 있습니다! 초반 세팅이 조금 힘들지 그마저도 이런 개발 분야에 관심이 많다면 쉽게 하실 수 있으리라 생각합니다 :)

특히나 한글 레퍼런스가 많이 없는 Hugo이기에 앞으로도 제 블로그에 적용했던 세팅들을 공유해 보도록 하겠습니다! 끝까지 봐주셔서 감사합니다! 공감과 댓글은 큰 힘이 됩니다 :D

![](images/Pasted%20image%2020240914111511.png)

### | 참고
[Window에서 Hugo로 Github page 만들고 배포하기](https://jeha00.github.io/post/dev-contents/hugo%EB%A1%9C-github-page-%EB%A7%8C%EB%93%A4%EA%B3%A0-%EB%B0%B0%ED%8F%AC%ED%95%98%EA%B8%B0/)

[Hugo 오류 ) Theme가 적용이 안되는 문제](https://diy-multitab.tistory.com/66)

[Welcome to the PaperMod's wiki!](https://github.com/adityatelange/hugo-PaperMod/wiki/)

[Jekyll 블로그에서 Hugo 블로그로 이전 후기](https://blog.dslab.kr/jekyll-to-hugo/)

[Jekyll 블로그에서 Hugo 블로그로 이전 후기 | Read Markdown View](blog.dslab.kr/jekyll-to-hugo/index.md)

[DataLama/hugo-blog | hugo 기반의 정적 블로그](https://github.com/DataLama/hugo-blog)

[Github Pages + Hugo를 사용한 블로그 구축기](https://blog.billo.io/devposts/blog_github_page/)

[hugo + netlify로 블로그 만들기](https://lena-chamna.netlify.app/post/how_to_make_hugo_blog_with_netlify/)

[hugo로 github.io 블로그 만들기 - 1편](https://blog.naver.com/nhistory/222387283804)