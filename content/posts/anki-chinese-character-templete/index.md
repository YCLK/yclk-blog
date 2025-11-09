+++
title = 'Anki 한문 템플릿 공유'
summary = '💻 한문 학습에 최적화된 Anki 템플릿 공유'
date = 2023-12-14
draft = false

[cover]
image = 'images/cover.png'
alt = "Anki Templete Screenshot"  # 이미지 대체 텍스트
caption = "Anki Templete Screenshot"  # 이미지 캡션 (선택사항)
+++
안녕하세요! 루크입니다
이번 포스팅에선 몇 달 전 기말고사에서도 유용하게 사용한 한문 공부용 안키 템플릿을 공유하려고 합니다 :) ~~(사실상 백업용)~~

먼저 한문 문장용 템플릿입니다
![](images/Pasted%20image%2020240526111202%201.png)
적용하면 이런 모습인데요,  한문의 경우 그냥 고딕체로 보게되면 실제 시험이랑 이질감이 좀 많이 들어서 폰트 적용한 한문+음+뜻 이런식으로 구성해 보았습니다 ㅎㅎ

코드는 **앞면, 뒷면, 스타일 순서**대로 적어두었습니다
```html
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+TC&display=swap" rel="stylesheet">

<div class=hanja>{{Front}}</div>
```

```html
{{FrontSide}}

<hr id=answer>

<div class=balum>{{Back}}</div>
<div class=meaning>{{Meaning}}</div>
```

```css
@font-face {
    font-family: 'Pretendard-Regular';
    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
    font-weight: 400;
    font-style: normal;
}

.card {
    font-family: Pretendard-Regular;
    text-align: center;
}

.hanja {
		font-size: 40px;
		font-family: 'Noto Serif TC', serif;
}

.balum {
    font-size: 30px;
}

.meaning {
		padding: 5px 0 0 0;
		font-size: 20px;
}
```
다음으로는 가장 많이 사용하는 한자/한문 어휘를 위한 템플릿 입니다
![](images/Pasted%20image%2020240526111346%201.png)
마찬가지로 적용시에는 이런 모습이며 코드는 **앞면, 뒷면, 스타일 순서**대로 적어두었습니다
```xml
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+TC&display=swap" rel="stylesheet">

<div class=hanja>{{Front}}</div>
```

```xml
{{FrontSide}}

<hr id=answer>

<div class=balum>{{Back}}</div>
<div class=meaning>{{Meaning}}</div>
```

```css
@font-face {
    font-family: 'Pretendard-Regular';
    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
    font-weight: 400;
    font-style: normal;
}

.card {
    font-family: Pretendard-Regular;
    text-align: center;
}

.hanja {
		font-size: 40px;
		font-family: 'Noto Serif TC', serif;
}

.balum {
    font-size: 30px;
}

.meaning {
		padding: 5px 0 0 0;
		font-size: 20px;
}
```
저는 이렇게 자주 사용했는데 필요에 따라 자유롭게 변형하시면 유용하게 사용할 수 있지 않을까 싶네요ㅎㅎ 평소 공부할 때 안키 정말 유용하게 사용하고 있는데 앞으로 안키 팁도 여러개 올려보도록 하겠습니다!ㅋㅋㅋ

끝까지 봐주셔서 감사합니다! 공감과 댓글은 큰 힘이 됩니다 :D