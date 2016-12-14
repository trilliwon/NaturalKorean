import Foundation



public enum StringType {
  case hangeul
  case english
  case number
  case unknown
  
  public static func with(string: String) -> StringType {
    if string.isEndWithHangeul { return StringType.hangeul }
    if string.isEndWithEnglish { return StringType.english }
    if string.isEndWithNumber { return StringType.number }
    return StringType.unknown
  }
}


public struct NaturalKorean {
  
  public static let baseCode: Int = 44032
  public static let choSungCode = 588
  public static let jungSungCode = 28
  
  /**
   초성 list
   */
  public static let choSungList = ["ㄱ", "ㄲ", "ㄴ", "ㄷ", "ㄸ", "ㄹ", "ㅁ", "ㅂ", "ㅃ", "ㅅ", "ㅆ", "ㅇ", "ㅈ", "ㅉ", "ㅊ", "ㅋ", "ㅌ", "ㅍ", "ㅎ"]
  
  /**
   중성 list
   */
  public static let jungSungList = ["ㅏ", "ㅐ", "ㅑ", "ㅒ", "ㅓ", "ㅔ", "ㅕ", "ㅖ", "ㅗ", "ㅘ", "ㅙ", "ㅚ", "ㅛ", "ㅜ", "ㅝ", "ㅞ", "ㅟ", "ㅠ", "ㅡ", "ㅢ", "ㅣ"]
  
  /**
   종성 list
   */
  public static let jongSungList = [" ", "ㄱ", "ㄲ", "ㄳ", "ㄴ", "ㄵ", "ㄶ", "ㄷ", "ㄹ", "ㄺ", "ㄻ", "ㄼ", "ㄽ", "ㄾ", "ㄿ", "ㅀ", "ㅁ", "ㅂ", "ㅄ", "ㅅ", "ㅆ", "ㅇ", "ㅈ", "ㅊ", "ㅋ", "ㅌ", "ㅍ", "ㅎ"]
  
  /**
   alphabet list
   */
  public static let engCheckList = ["A", "a", "E", "e", "F", "f", "G", "g", "H", "h", "I", "i", "J", "j", "O", "o", "R", "r", "S", "s", "U", "u", "V", "v", "X", "x", "Y", "y", "Z", "z"]
  
  
  
  /**
   word에 따라 "**이**" 혹은 "**가**"를 리턴
   
   @param word
   
   @return String
   */
  public static func get_E_or_GA(word: String) -> String {
    switch StringType.with(string: word) {
    case .hangeul:
      return word.isEndWithJongSung ? "이" : "가"
      
    case .english:
      return word.isEndWithEnglishHangeulSupport ? "이" : "가"
      
    case .number:
      return word.isNumberHasSupport ? "이" : "가"
      
    case .unknown:
      return "(이)가"
    }
  }
  

  /**
   word에 따라 "**은**" 혹은 "**는**"를 리턴
   
   @param word
   
   @return String
   */
  public static func get_EUN_or_NEUN(word: String) -> String {
    switch StringType.with(string: word) {
    case .hangeul:
      return word.isEndWithJongSung ? "은" : "는"
      
    case .english:
      return word.isEndWithEnglishHangeulSupport ? "은" : "는"
      
    case .number:
      return word.isNumberHasSupport ? "은" : "는"
      
    case .unknown:
      return "(은)는"
    }
  }
  
  
  /**
   word에 따라 "**을**" 혹은 "**를**"을 리턴
   
   @param word
   
   @return String
   */
  public static func get_EUL_or_LEUL(word: String) -> String {
    switch StringType.with(string: word) {
    case .hangeul:
      return word.isEndWithJongSung ? "을" : "를"
      
    case .english:
      return word.isEndWithEnglishHangeulSupport ? "을" : "를"
      
    case .number:
      return word.isNumberHasSupport ? "을" : "를"
      
    case .unknown:
      return "(을)는"
    }
  }
  
  
  /**
   word에 따라 "**로**" 혹은 "**으로**"를 리턴
   
   @param word
   
   @return String
   */
  public static func get_EURO_or_RO(word: String) -> String {
    switch StringType.with(string: word) {
    case .hangeul:
      return word.isEndWith_LEEUL ? "로" : (word.isEndWithJongSung ? "으로" : "로")
      
    case .english:
      return word.isEndWith_L ? "로" : (word.isEndWithEnglishHangeulSupport ? "으로" : "로")
      
    case .number:
      return word.isEndWithOne ? "로" : (word.isNumberHasSupport ? "으로" : "로")
      
    case .unknown:
      return "(으)로"
    }
  }
  
  
  /**
   word에 따라 "**아**" 혹은 "**야**"를 리턴
   
   @param word
   
   @return String
   */
  public static func get_A_or_YA(word: String) -> String {
    switch StringType.with(string: word) {
    case .hangeul:
      return word.isEndWithJongSung ? "아" : "야"
      
    case .english:
      return word.isEndWithEnglishHangeulSupport ? "아" : "야"
      
    case .number:
      return word.isNumberHasSupport ? "아" : "야"
      
    case .unknown:
      return "(아)야"
    }
  }
  
  public static func get_A_or_YA_with(word: String) -> String {
    return "\(word)\(get_A_or_YA(word: word))"
  }
  
  
  /**
   word에 따라 "**과**" 혹은 "**와**"를 리턴
   
   @param word
   
   @return String
   */
  public static func get_WA_or_GUA(word: String) -> String {
    switch StringType.with(string: word) {
    case .hangeul:
      return word.isEndWithJongSung ? "과" : "와"
      
    case .english:
      return word.isEndWithEnglishHangeulSupport ? "과" : "와"
      
    case .number:
      return word.isNumberHasSupport ? "과" : "와"
      
    case .unknown:
      return "(과)와"
    }
  }
  
  public static func get_WA_or_GUA_with(word: String) -> String {
    return "\(word)\(get_WA_or_GUA(word: word))"
  }
}


public extension String {
  
  /**
   종성으로 끝나면서 그 종성이 ㄹ 인지 체크
   
   # ex
   - "**개발**"은 종성이 "**ㄹ**" return true
   - "**사람**"는 종성이 "**ㄹ**"이 아니므로 return false
   */
  var isEndWith_LEEUL: Bool {
    guard let jongSungOfLastHangeul = self.jongSungOfLastHangeul else { return false }
    return (jongSungOfLastHangeul == "ㄹ")
  }
  
  /**
   종성으로 끝나는 혹은 종성이 있는 string 인지 체크
   
   # ex
   - "**사람**"은 종성이 있으므로 return true
   - "**여자**"는 종성이 없으므로 return false
   */
  var isEndWithJongSung: Bool {
    guard let jongSungOfLastHangeul = self.jongSungOfLastHangeul else { return false }
    return (jongSungOfLastHangeul != " ")
  }
  
  
  /**
   한글 마지막 글자의 종성
   
   # ex
   - "**사람**"의 마지막 종성 "**ㅁ**"
   - "**여자**"는 종성이 없으므로 공백을
   */
  var jongSungOfLastHangeul: String? {
    guard
      let lastCharacter = characters.last,
      let lastUnicodeScalar = String(lastCharacter).unicodeScalars.first else { return nil }
    
    let cBase = Int(lastUnicodeScalar.value) - NaturalKorean.baseCode
    
    let cs = (cBase / NaturalKorean.choSungCode)
    let jus = (cBase - (NaturalKorean.choSungCode * cs)) / NaturalKorean.jungSungCode
    let jongSungIndex = (cBase - (NaturalKorean.choSungCode * cs) - (NaturalKorean.jungSungCode * jus))
    return NaturalKorean.jongSungList[jongSungIndex]
  }
  
  /**
   한글로 끝나는 string 인지 체크
   
   # ex
   - "**Hi, 한글**" 은 "**글**"로 끝나기 때문에 return true
   */
  var isEndWithHangeul: Bool {
    guard let lastUnicode = self.unicodeScalars.last else {
      return false
    }
    
    let last = lastUnicode.value
    return 44032 <= last && last <= 55199
  }
  
  
  /**
   숫자로 끝나는 string 인지 체크
   
   # ex
   - `hello0101`
   */
  var isEndWithNumber: Bool {
    guard let lastUnicodeScalar = self.unicodeScalars.last else {
      return false
    }
    let last = lastUnicodeScalar.value
    return (48 <= last && last <= 57)
  }
  
  
  /**
   받침이 있는 숫자인지 체크
   
   # ex
   - 0 : 영
   - 1 : 일
   - 3 : 삼
   - 6 : 육
   - 7 : 칠
   - 8 : 팔
   */
  var isNumberHasSupport: Bool {
    guard
      let lastCharacter: Character = self.characters.last,
      let integer = Int(String(lastCharacter)) else {
        return false
    }
    
    switch integer {
    case 0, 1, 3, 6, 7, 8:
      return true
    default:
      return false
    }
  }
  
  
  /**
   마지막 끝나는 숫자가 1인지 체크
   
   # ex
   - "**0101**"은 "**1**"로 끝나므로 return true
   - "**0100**"은 "**0**"로 끝나므로 return false
   */
  var isEndWithOne: Bool {
    guard let lastUnicodeScalar = self.unicodeScalars.last else {
      return false
    }
    return ("1" == String(lastUnicodeScalar))
  }
  
  
  /**
   영어로 끝나는 string 인지 체크
   
   # ex
   - "**english**" 는 마지막이 "**h**"이기 때문에 `return true`
   - "**한글**" 는 마지막이 영어로 끝나지 않기 때문에 `return false`
   */
  var isEndWithEnglish: Bool {
    guard let lastUnicode = self.unicodeScalars.last else {
      return false
    }
    let last = lastUnicode.value
    return (65 <= last && last <= 90) || (97 <= last && last <= 122)
  }

  
  /**
   마지막 두개 character를 string으로 변환 후 반환
   
   # ex
   - "**create**"는 "**te**"반환
   - "**second**"는 "**nd**"반환
   - "****"는 empty string 반환
   */
  var lastTwoCharString: String {
    return self.characters.suffix(2).map { char in return String(char) }.reduce("", +)
  }
  
  
  /**
   마지막 character가 "**L**"로 끝나는지 체크
   
   # ex
   - "**girl**"은 "**L**"로 끝나므로 return true
   */
  var isEndWith_L: Bool {
    guard let lastUnicode = self.unicodeScalars.last else {
      return false
    }
    let last = lastUnicode.value
    return (last == 76 || last == 108)
  }
  
  
  /**
   영어에서 ...ing, ...le, ...me 는 한글로 발음할 때 받침이 된다.
   ...ing, ...le, ...me 인지 체크
   
   # ex
   - "**going**"은 "**ng**"로 끝나브로 return true
   - "**home**"은 "**me**"로 끝나브로 return true
   - "**hole**"은 "**le**"로 끝나브로 return true
   */
  var isEndWithEnglishHangeulSupport: Bool {
    switch self.lastTwoCharString.uppercased() {
    case "NG", "LE", "ME", "OD":
      return true
    default:
      return false
    }
  }

  
  enum EnglishHangeulSupport: String {
    case NG = "NG"
    case LE = "LE"
    case ME = "ME"
    case ND = "ND"
    case ED = "ED"
    case LT = "LT"
    case ST = "ST"
    case RD = "RD"
    case LD = "LD"
  }
}









