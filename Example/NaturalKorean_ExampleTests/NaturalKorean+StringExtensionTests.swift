import XCTest
import Nimble
import Quick
import NaturalKorean

class NaturalKoreanStringExtensionTests: QuickSpec {

  override func spec() {

    describe(" a string") {
      it("is return 이") {
        expect("사람".E_or_GA_only).to(equal("이"))
      }

      it("is return 가") {
        expect("프로그래머".E_or_GA_only).to(equal("가"))
      }

      it("is return 사람이") {
        expect("사람".E_or_GA).to(equal("사람이"))
      }

      it("is return 프로그래머가") {
        expect("프로그래머".E_or_GA).to(equal("프로그래머가"))
      }

      it("is return 사람은") {
        expect("사람".EUN_or_NEUN).to(equal("사람은"))
      }

      it("is return 프로그래머는") {
        expect("프로그래머".EUN_or_NEUN).to(equal("프로그래머는"))
      }

      it("is return 사람을") {
        expect("사람".EUL_or_LEUL).to(equal("사람을"))
      }

      it("is return 프로그래머를") {
        expect("프로그래머".EUL_or_LEUL).to(equal("프로그래머를"))
      }

      it("is return 맥북으로") {
        expect("맥북".EURO_or_RO).to(equal("맥북으로"))
      }

      it("is return 낙찰로") {
        expect("낙찰".EURO_or_RO).to(equal("낙찰로"))
      }

      it("is return 그녀로") {
        expect("그녀".EURO_or_RO).to(equal("그녀로"))
      }

      it("is return 이사람아") {
        expect("이사람".A_or_YA).to(equal("이사람아"))
      }

      it("is return 이여자야") {
        expect("이여자".A_or_YA).to(equal("이여자야"))
      }

      it("is return 이사람과") {
        expect("이사람".WA_or_GUA).to(equal("이사람과"))
      }

      it("is return 이여자와") {
        expect("이여자".WA_or_GUA).to(equal("이여자와"))
      }
    }
  }
}
