+++
title = 'Tailwind CSS 웹 폰트 적용하기'
summary = "💻 CDN을 통해 적용한 Tailwind CSS에 웹 폰트를 적용하는 방법"
date = 2024-10-13
categories = ["강좌"]
tags = ["Tailwind", "CSS", "폰트", "웹폰트"]
draft = false

[cover]
image = 'images/cover.png'
+++

안녕하세요! 루크입니다 :) 이번 포스팅에서는 Tailwind CSS에 웹 폰트를 적용하는 방법을 알아보겠습니다. 저는 별도의 웹 서버를 구축한 것은 아니라서 **Play CDN**을 통해서 Tailwind CSS를 적용했습니다!

먼저 CSS로 웹 폰트를 추가해 주었습니다. 적용할 폰트는 던파 비트비트체v2와 ~~근본~~ 프리텐다드입니다! 언제나 그렇듯 웹 폰트는 눈누에서 가져왔습니다.

```html
<style>
	@font-face{
	font-family:'DNFBitBitv2';
	font-style:normal;font-weight:400;src:url('//cdn.df.nexon.com/img/common/font/DNFBitBitv2.otf')format('opentype')}
	
    @font-face {
        font-family: 'Pretendard-Regular';
        src: url('https://fastly.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
        font-weight: 400;
        font-style: normal;
    }
</style>
```

이제 스크립트의 `tailwind.config`를 통해서 적용해 주기만 하면 웹 폰트 적용은 끝입니다! `sans`를 통해 기본 `sans-serif`글꼴을 프리텐다드로 바꾸었고, `bitbit`를 통해서 던파 비트비트체를 별도로 정의해 주었습니다.

```html
<script>
tailwind.config = {
    theme: {
	    extend: {
	        fontFamily: {
	            sans: ["Pretendard-Regular", "sans-serif"], 
	            bitbit: ["DNFBitBitv2"]
	        },
	    }
    }
}
</script>
```

모든 과정을 완료해 주었다면 스크립트에서 정의한 이름대로 html에서 폰트를 사용할 수 있게 됩니다!
첫 번째 p태그에는 비트비트체, 두 번째 p태그에는 프리텐다드가 정상적으로 적용된 것을 확인할 수 있습니다 :)

```html
<p class="text-2xl md:text-3xl italic font-bitbit">Karaoke (a.k.a 오타쿠 노래방 리스트)</p>
<p class="text-base pb-4 font-sans">문의: luke@yclk.me</p>
```

지금까지 Tailwind CSS에 웹 폰트를 적용하는 방법에 대해서 알아보았습니다! Tailwind를 처음으로 사용하다 보니 기초적인 폰트 적용도 헤매게 되더군요ㅋㅋㅠ 본 포스팅이 Tailwind CSS를 처음으로 사용하시는 분들에게 도움이 되었으면 좋겠습니다 :) 끝까지 봐주셔서 감사합니다! 공감과 댓글은 큰 힘이 됩니다 :D