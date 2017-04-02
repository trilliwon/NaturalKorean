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

      it("returns 사람은") {
        expect("사람".EUN_or_NEUN).to(equal("사람은"))
      }

      it("return 프로그래머는") {
        expect("프로그래머".EUN_or_NEUN).to(equal("프로그래머는"))
      }

			it("returns programmer는") {
				expect("programmer".EUN_or_NEUN).to(equal("programmer는"))
			}

			it("returns 110은") {
				expect("110".EUN_or_NEUN).to(equal("110은"))
			}

			it("returns 15는") {
				expect("15".EUN_or_NEUN).to(equal("15는"))
			}

			it("returns ⚔️은") {
				expect("⚔️".EUN_or_NEUN).to(equal("⚔️은"))
			}

			it("returns home은") {
				expect("home".EUN_or_NEUN).to(equal("home은"))
			}

      it("returns 사람을") {
        expect("사람".EUL_or_LEUL).to(equal("사람을"))
      }

      it("returns 프로그래머를") {
        expect("프로그래머".EUL_or_LEUL).to(equal("프로그래머를"))
      }

			it("returns home을") {
				expect("home".EUL_or_LEUL).to(equal("home을"))
			}

			it("returns house를") {
				expect("house".EUL_or_LEUL).to(equal("house를"))
			}

			it("returns 2를") {
				expect("2".EUL_or_LEUL).to(equal("2를"))
			}

			it("returns 0을") {
				expect("0".EUL_or_LEUL).to(equal("0을"))
			}

			it("returns 😍를") {
				expect("😍".EUL_or_LEUL).to(equal("😍를"))
			}

			it("returns girl로") {
				expect("girl".EURO_or_RO).to(equal("girl로"))
			}

			it("returns 0으로") {
				expect("0".EURO_or_RO).to(equal("0으로"))
			}

			it("returns 😅으로") {
				expect("😅".EURO_or_RO).to(equal("😅으로"))
			}

			it("returns 로") {
				expect("girl".EURO_or_RO_only).to(equal("로"))
			}

			it("returns 으로") {
				expect("going".EURO_or_RO_only).to(equal("으로"))
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

			it("is return 야") {
				expect("girl".A_or_YA_only).to(equal("야"))
			}

			it("is return 아") {
				expect("ing".A_or_YA_only).to(equal("아"))
			}

			it("is return 0아") {
				expect("0".A_or_YA_only).to(equal("아"))
			}

			it("returns 2야") {
				expect("2".A_or_YA_only).to(equal("야"))
			}

			it("returns ⚔️아") {
				expect("⚔️".A_or_YA_only).to(equal("아"))
			}

      it("returns 이사람과") {
        expect("이사람".WA_or_GUA).to(equal("이사람과"))
      }

      it("returns 이여자와") {
        expect("이여자".WA_or_GUA).to(equal("이여자와"))
      }

			it("returns ing과") {
				expect("ing".WA_or_GUA_only).to(equal("과"))
			}

			it("returns 와") {
				expect("gg".WA_or_GUA_only).to(equal("와"))
			}

			it("returns 과") {
				expect("0".WA_or_GUA_only).to(equal("과"))
			}

			it("returns 와") {
				expect("2".WA_or_GUA_only).to(equal("와"))
			}

			it("returns ⚔️와") {
				expect("⚔️".WA_or_GUA_only).to(equal("와"))
			}
    }
  }
}
