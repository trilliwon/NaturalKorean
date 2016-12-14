import Foundation



public extension String {

  /**
   주격조사 "**이**" 혹은 "**가**"를 return
   */
  var E_or_GA_only: String {
    return NaturalKorean.get_E_or_GA(word: self)
  }
  
  /**
   주격조사 "**이**" 혹은 "**가**"를 self뒤에 붙혀서 return
   */
  var E_or_GA: String {
    return "\(self)\(self.E_or_GA_only)"
  }
  
  
  
  /**
   부사격조사 "**은**" 혹은 "**는**"을 return
   */
  var EUN_or_NEUN_only: String {
    return NaturalKorean.get_EUN_or_NEUN(word: self)
  }
  
  /**
   부사격조사 "**은**" 혹은 "**는**"을 self뒤에 붙혀서 return
   */
  var EUN_or_NEUN: String {
    return "\(self)\(self.EUN_or_NEUN_only)"
  }
  
  
  
  /**
   목적격조사 "**을**" 혹은 "**를**"을 return
   */
  var EUL_or_LEUL_only: String {
    return NaturalKorean.get_EUL_or_LEUL(word: self)
  }
  
  /**
   목적격조사 "**을**" 혹은 "**를**"을 self뒤에 붙혀서 return
   */
  var EUL_or_LEUL: String {
    return  "\(self)\(self.EUL_or_LEUL_only)"
  }
  
  
  
  /**
   부사격조사 "**으로**" 혹은 "**로**"를 return
   */
  var EURO_or_RO_only: String {
    return NaturalKorean.get_EURO_or_RO(word: self)
  }
  
  /**
   부사격조사 "**으로**" 혹은 "**로**"를 self뒤에 붙혀서 return
   */
  var EURO_or_RO: String {
    return  "\(self)\(self.EURO_or_RO_only)"
  }
  
  
  
  /**
   호격조사 "**아**" 혹은 "**야**"를 return
   */
  var A_or_YA_only: String {
    return NaturalKorean.get_A_or_YA(word: self)
  }
  
  /**
   호격조사 "**아**" 혹은 "**야**"를 self뒤에 붙혀서 return
   */
  var A_or_YA: String {
    return  "\(self)\(self.A_or_YA_only)"
  }
  
  
  
  /**
   접속조사 "**와**" 혹은 "**과**"를 return
   */
  var WA_or_GUA_only: String {
    return NaturalKorean.get_WA_or_GUA(word: self)
  }
  
  /**
   접속조사 "**와**" 혹은 "**과**"를 self뒤에 붙혀서 return
   */
  var WA_or_GUA: String {
    return  "\(self)\(self.WA_or_GUA_only)"
  }
}
