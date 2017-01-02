import XCTest
import Nimble
import Quick
import NaturalKorean

class NaturalKoreanExampleTests: QuickSpec {

  override func spec() {

    describe(" a string") {

      it("is end with 한글.") {
        expect("개발자".isEndWithHangeul).to(beTrue())
      }

      it("is not end with 한글") {
        expect("English".isEndWithHangeul).to(beFalse())
      }

      it("is end with number.") {
        expect("010".isEndWithNumber).to(beTrue())
      }

      it("is not end with number.") {
        expect("not number".isEndWithNumber).to(beFalse())
      }

      it("is 받침 있는 number.") {
        expect("0".isNumberHasSupport).to(beTrue())
      }

      it("is not 받침 있는 number.") {
        expect("2".isNumberHasSupport).to(beFalse())
      }

      it("is end with 1") {
        expect("111".isEndWithOne).to(beTrue())
      }

      it("is end with 0") {
        expect("110".isEndWithOne).to(beFalse())
      }

      it("is end with 종성") {
        expect("사람".isEndWithJongSung).to(beTrue())
      }

      it("is end with 종성") {
        expect("힘".isEndWithJongSung).to(beTrue())
      }

      it("is end with 종성") {
        expect("개발자".isEndWithJongSung).to(beFalse())
      }

      it("is not end with 종성") {
        expect("여자".isEndWithJongSung).to(beFalse())
      }

      it("is end with ㄹ 종성") {
        expect("개발".isEndWith_LEEUL).to(beTrue())
      }

      it("is end with ㄹ 종성") {
        expect("삭발".isEndWith_LEEUL).to(beTrue())
      }

      it("is not end with ㄹ 종성") {
        expect("친구".isEndWith_LEEUL).to(beFalse())
      }

      it("is not end with ㄹ 종성") {
        expect("사람".isEndWith_LEEUL).to(beFalse())
      }

      it("is index of 종성 ㄱ") {
        expect("각".jongSungOfLastHangeul).to(equal("ㄱ"))
      }

      it("is index of 종성 ㄲ") {
        expect("갂".jongSungOfLastHangeul).to(equal("ㄲ"))
      }

      it("is index of 종성 ㄳ") {
        expect("갃".jongSungOfLastHangeul).to(equal("ㄳ"))
      }

      it("is end with english") {
        expect("english".isEndWithEnglish).to(beTrue())
      }

      it("is not end with english") {
        expect("english 센세이".isEndWithEnglish).to(beFalse())
      }

      it("is last two character string of a going") {
        expect("going".lastTwoCharString).to(equal("ng"))
      }

      it("is last two character string of a create") {
        expect("create".lastTwoCharString).to(equal("te"))
      }

      it("is last two character string of a empty") {
        expect("".lastTwoCharString).to(equal(""))
      }

      it("is end with L") {
        expect("girl".isEndWith_L).to(beTrue())
      }

      it("is not end with L") {
        expect("not".isEndWith_L).to(beFalse())
      }

      it("is end with English Hangeul support. going") {
        expect("going".isEndWithEnglishHangeulSupport).to(beTrue())
      }

      it("is end with English Hangeul support. second") {
        expect("second".isEndWithEnglishHangeulSupport).to(beFalse())
      }
    }

    describe(" a NaturalKorean struct") {
      it("has Hangeul base code. 44032") {
        expect(NaturalKorean.baseCode).to(equal(44032))
      }

      it("has choSung code.") {
       expect(NaturalKorean.choSungCode).to(equal(588))
      }

      it("has jungSung code.") {
        expect(NaturalKorean.jungSungCode).to(equal(28))
      }

      it("is Hangeul") {
        expect(StringType.with(string: "아마존")).to(equal(StringType.hangeul))
      }

      it("is English") {
        expect(StringType.with(string: "Amazon")).to(equal(StringType.english))
      }

      it("is Number") {
        expect(StringType.with(string: "920819")).to(equal(StringType.number))
      }

      it("is unkown") {
        expect(StringType.with(string: "😂")).to(equal(StringType.unknown))
      }

      it("is return 가") {
        expect(NaturalKorean.get_E_or_GA(word: "프로그래머")).to(equal("가"))
      }

      it("is return 이") {
        expect(NaturalKorean.get_E_or_GA(word: "사람")).to(equal("이"))
      }

      it("is return (이)가") {
        expect(NaturalKorean.get_E_or_GA(word: "😂")).to(equal("(이)가"))
      }

      it("is return 프로그래머가") {
        expect(NaturalKorean.get_E_or_GA(word: "프로그래머")).to(equal("가"))
      }

      it("is return 사람이") {
        expect(NaturalKorean.get_E_or_GA(word: "사람")).to(equal("이"))
      }

      it("is return creator가") {
        expect(NaturalKorean.get_E_or_GA(word: "creator")).to(equal("가"))
      }

      it("is return god이") {
        expect(NaturalKorean.get_E_or_GA(word: "god")).to(equal("이"))
      }

      it("is return good이") {
        expect(NaturalKorean.get_E_or_GA(word: "good")).to(equal("이"))
      }

      it("is return 010이") {
        expect(NaturalKorean.get_E_or_GA(word: "010")).to(equal("이"))
      }

      it("is return 015가") {
        expect(NaturalKorean.get_E_or_GA(word: "015")).to(equal("가"))
      }

      it("is return 011로") {
        expect(NaturalKorean.get_EURO_or_RO(word: "011")).to(equal("로"))
      }
    }
  }
}
