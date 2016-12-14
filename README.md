# NaturalKorean

[![CI Status](http://img.shields.io/travis/Steve Jo/NaturalKorean.svg?style=flat)](https://travis-ci.org/Steve Jo/NaturalKorean)
[![Version](https://img.shields.io/cocoapods/v/NaturalKorean.svg?style=flat)](http://cocoapods.org/pods/NaturalKorean)
[![License](https://img.shields.io/cocoapods/l/NaturalKorean.svg?style=flat)](http://cocoapods.org/pods/NaturalKorean)
[![Platform](https://img.shields.io/cocoapods/p/NaturalKorean.svg?style=flat)](http://cocoapods.org/pods/NaturalKorean)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Explanation

자연스러운 한글**을** 사용할 수 있습니다.

영어, 전화번호 **조사**도 지원됩니다.

## Test code written in [Quick and Nimble](https://github.com/Quick/Quick)

```Swift
    describe("NaturalKorean string extensions") {
      
      
      it("returns 사람이") {
        expect("사람".E_or_GA).to(equal("사람이"))
      }
      
      it("returns 프로그래머가") {
        expect("프로그래머".E_or_GA).to(equal("프로그래머가"))
      }
      
      
      it("returns 사람은") {
        expect("사람".EUN_or_NEUN).to(equal("사람은"))
      }
      
      it("returns 프로그래머는") {
        expect("프로그래머".EUN_or_NEUN).to(equal("프로그래머는"))
      }
      
      
      it("returns 사람을") {
        expect("사람".EUL_or_LEUL).to(equal("사람을"))
      }
      
      it("returns 프로그래머를") {
        expect("프로그래머".EUL_or_LEUL).to(equal("프로그래머를"))
      }
      
      
      it("returns 맥북으로") {
        expect("맥북".EURO_or_RO).to(equal("맥북으로"))
      }
      
      it("returns 낙찰로") {
        expect("낙찰".EURO_or_RO).to(equal("낙찰로"))
      }
      
      it("returns 그녀로") {
        expect("그녀".EURO_or_RO).to(equal("그녀로"))
      }

      
      it("returns 이사람아") {
        expect("이사람".A_or_YA).to(equal("이사람아"))
      }
      
      it("returns 이여자야") {
        expect("이여자".A_or_YA).to(equal("이여자야"))
      }
      
      
      it("returns 이사람과") {
        expect("이사람".WA_or_GUA).to(equal("이사람과"))
      }
      
      it("returns 이여자와") {
        expect("이여자".WA_or_GUA).to(equal("이여자와"))
      }
    }

```



---

- 주격조사

 - 그 사람**이** 주인입니다.

 - 그 여자**가** 전 여친 입니다.

---

- 목적격조사

 - 3개의 문장**을** 외워야 합니다.

 - 12개의 단어**를** 외워야 합니다.

---

- 보조사

 - 그 사람**은** 프로그래머입니다

 - 그 여자**는** 이뻐요.

---

- 호격조사

 - 이 여자**야**

 - 이 세상**아**

---

- 부사격조사

 - 집**으로** 가는중

 - 하교**로** 가는중

 - 오늘**로** 정했어!

---

- 접속조사

 - 그사람**과** 그여자

 - 프로그래머**와** 맥프레
 
---


## Requirements

+ iOS 8.0+

+ Swift 3.0

+ Xcode 8.0


## Installation

NaturalKorean is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "NaturalKorean"
```

## Author

Steve Jo, trilliwon@gmail.com

## License

NaturalKorean is available under the MIT license. See the LICENSE file for more info.
