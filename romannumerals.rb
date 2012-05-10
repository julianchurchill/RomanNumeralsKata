
class RomanNumerals
  NUMERALS = [
    ["C",100],
    ["XC",90],
    ["L",50],
    ["XL",40],
    ["X",10],
    ["IX",9],
    ["V",5],
    ["IV",4],
    ["I",1]
  ]

  def toRoman( number )
    result = ""
    NUMERALS.each do |numeral, arabic|
      while number >= arabic
        result += numeral
        number -= arabic
      end
    end
    result
  end
end
