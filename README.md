# JuiceMaker
## Information
* 프로젝트 기간 : 2021.06.07. ~ 2021.06.18.
* 프로젝트 인원 : 2명 Marco(@Keeplo), YoshiKim(@taeyoung-Kim-KR)
* 프로젝트 소개 
    > 과일 쥬스 주문 시 사용되는 과일 재고를 관리하고 재고 수정을 하는 앱
* Pull Requests
    * [Step 1](https://github.com/yagom-academy/ios-juice-maker/pull/70)
    * [Step 2](https://github.com/yagom-academy/ios-juice-maker/pull/85)
    * [Step 3](https://github.com/yagom-academy/ios-juice-maker/pull/103)
### Tech Stack
* Swift 5.4
* Xcode 12.5
* iOS 14.0
### Demo
<details><summary>Demo Image</summary><div markdown="1">

**쥬스 만들기 동작 및 재고 수정 동작**

</div></details>

## Troubleshootings
<details><summary>NotificationCenter의 올바르지 못한 사용 및 KVO(Key-Value Observing) 적용</summary><div markdown="1">

인스턴스 내부 프로퍼티가 변경된 사항에 대한 이벤트를 외부 객체로 전달하는 방법을 고민함
NotificationCenter userInfo에 해당 변경사항을 담아서 전달하는 방식을 최초구현

NotificationCenter의 좀 더 적절한 사용방향에 대한 피드백을 받고 KVO 형태로 변형  

</div></details>
<details><summary>딕셔너리 프로퍼티를 인스턴스의 subscript 이용해서 형태 변경</summary><div markdown="1">

최초 딕셔너리 프로퍼티와 enum case key 형태는 `@objc` 형태의 KVO 프로퍼티가 구현되지 않기 때문에 Subscript 의 key값으로 enum case를 사용하는 형태로 프로퍼티에 접근하는 방식 구현

</div></details>
<details><summary>인스턴스 메서드의 결과를 외부에 알려주는 방법에 대한 고민</summary><div markdown="1">

과일 재고 관리처럼 KVO에 갖혀서 메서드의 결과를 반환하면 되는 부분에서도 결과 전달에 관해 고민함

비 동기 처리가 되는 메서드가 아니면 단순한 반환값으로 처리가 가능하다는 점을 이해하고 비동기처리와 동기처리에 대한 개념을 이해함


</div></details>
<br>