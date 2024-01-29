# Ai Chat Bot 앱 
![image](https://hackmd.io/_uploads/rkNFs_E9a.png)


### Table of Content

> ** 1️⃣ OverView**
>
> - 결과물
> - 프로젝트 참여자
> - 프로젝트 기간
>
> ** 2️⃣ 프로젝트 구현**
>
> - 프로젝트 설계
> - 사용 기술/구성
> - 태스크 매니지먼트
> - 프로젝트 파일 구조
> - 구현 기능
> - 구현 상세
>
> ** 3️⃣ 습득 지식**
>
> - Trouble Shooting
> - Keywords

## 1️⃣ OverView

### 📍 결과물
![startApp](https://hackmd.io/_uploads/HJHk_ooFT.gif)


### 📍 프로젝트 참여자

| 랄라 | 재혁 |
| :-: | :-: |
| <a href="https://github.com/rarlala"> <img src="https://avatars.githubusercontent.com/u/48057629?v=4" style="width: 300px"/></a> | <a href="https://github.com/SimJaeHyeok"><img src="https://avatars.githubusercontent.com/u/142188004?v=4" style="width: 300px"></a> |

### 📍 프로젝트 기간

> 2024.01.02 ~ 2024.01.26 (4 weeks)

<br/>

## 2️⃣ 프로젝트 구현

### 📍 프로젝트 설계

- 디자인 패턴: `MVC`

### 📍 사용 기술/구성

- Swift 기반 어플리케이션 작성
- UIKit framework
- Code Base UI
- OpenAI API

### 📍 태스크 매니지먼트

- Notion
- Discord

### 📍 프로젝트 파일 구조

```
├── ChatBot
│   ├── AppDelegate.swift
│   ├── Assets.xcassets
│   │   ├── AccentColor.colorset
│   │   │   └── Contents.json
│   │   ├── AppIcon.appiconset
│   │   │   └── Contents.json
│   │   └── Contents.json
│   ├── Base.lproj
│   │   └── LaunchScreen.storyboard
│   ├── Controller
│   │   └── ChatRoomViewController.swift
│   ├── Info.plist
│   ├── Model
│   │   ├── ChatBubble.swift
│   │   ├── ChatManager
│   │   │   └── ChatManager.swift
│   │   ├── DTO
│   │   │   ├── Message.swift
│   │   │   ├── RequestData.swift
│   │   │   └── ResponseData.swift
│   │   ├── Role.swift
│   │   └── UseCase
│   │       └── ChatUseCase.swift
│   ├── NetworkManager
│   │   ├── Builder
│   │   │   └── NetworkBuilderProtocol.swift
│   │   ├── Constant
│   │   │   └── Constant.swift
│   │   ├── Error
│   │   │   └── NetworkError.swift
│   │   ├── Extension
│   │   │   ├── Bundle+Extension.swift
│   │   │   └── URLSession+Extension.swift
│   │   ├── Feature
│   │   │   └── Chat
│   │   │       ├── ChatSendMessageBuilder.swift
│   │   │       ├── ChatService.swift
│   │   │       └── ChatServiceProtocol.swift
│   │   ├── NetworkManager.swift
│   │   └── URLSession
│   │       └── URLSessionProtocol.swift
│   ├── SceneDelegate.swift
│   └── View
│       ├── BubbleCell.swift
│       ├── BubbleTailView.swift
│       ├── Extension
│       │   └── UITextView+Extension.swift
│       └── LoadingView.swift
└── ChatBot.xcodeproj
    ├── project.pbxproj
    ├── project.xcworkspace
    │   ├── contents.xcworkspacedata
    │   ├── xcshareddata
    │   │   └── IDEWorkspaceChecks.plist
    │   └── xcuserdata
    │       └── leechiheon.xcuserdatad
    │           └── UserInterfaceState.xcuserstate
    └── xcuserdata
        └── leechiheon.xcuserdatad
            └── xcschemes
                └── xcschememanagement.plist
```

### 📍 구현 기능

<table>
<tr>
<th>구동 화면</th>
<th>구현 기능</th>
</tr>
<tr>
<td>
<img width="230" height="auto" alt="Screenshot1" src="https://hackmd.io/_uploads/rJzFQFN9p.gif">
</td>
<td>
  <li> URLSession을 이용한 네트워킹 </li>
</td>
</tr>
</table>
<table>
<tr>
<th>구동 화면</th>
<th>구현 기능</th>
</tr>
<tr>
<td>
<img width="230" height="auto" alt="Screenshot1" src="https://hackmd.io/_uploads/ryQkRONq6.gif">
</td>
<td>
  <li>Diffable DataSource를 활용한 UICollection View 구현</li>
  <li>CoreGraphics와 CoreAnimation을 이용한 말풍선 로딩 애니메이션 구현</li>
</td>
</tr>
</table>

<table>
<tr>
<th>구동 화면</th>
<th>구현 기능</th>
</tr>
<tr>
<td>
<img width="230" height="auto" alt="Screenshot1" src="https://hackmd.io/_uploads/HJ0GbFE5p.gif">
</td>
<td>
  <li>답변이 온 경우 해당 위치로 스크롤 처리 구현</li>
</td>
</tr>
</table>



### 📍 구현 상세

- Request 및 Response를 위한 데이터 모델 설계
- CodingKeys 프로토콜 활용
- URL Session을 활용한 서버와의 통신 구현
    - Builder Pattern 활용한 Network Manager 구현
- APIKey 암호화
- UICollection View를 활용한 UI 구현
    - Diffable DataSource 활용
- Core Graphics를 활용한 말풍선 UI 구현
- Core Animation과 CALayer를 활용한 말풍선 로딩 애니메이션 구현
- Keyboard Layout Guide 활용
- NotificationCenter를 활용해 모델의 변화를 감지하여 변화가 발생한 경우 화면이 수정되도록 수정

<br/>

## 3️⃣ 습득 지식

<table>
<tr>
<th> 🤩 Rarla</th>
<th> 🤹🏼 JaeHyeok</th>
</tr>
<tr>
<td>
<li>Builder Pattern 활용</li>
<li>Diffable DataSource 이해와 활용</li>
<li>UseCase 역할 이해 및 활용</li>
<li>Core Graphics, Core Animation을 활용한 UI 구현</li>
</td>
<td>
<li>Builder Pattern 활용</li>
<li>Diffable DataSource 이해와 활용</li>
<li>MVVM의 UseCase 개념 활용</li>
<li>Core Graphics, Core Animation 활용</li>
<li>Notification Center 활용</li>
</td>
</tr>
</table>

