class RomanNumeral

  def initialize
    @numeral_array = []
    @ones = ["I", "X", "C", "M"]
    @fives = ["V", "L", "D"]
    @nines = ["IX", "XC", "CM"]
  end

  def roman_digit(digit)
    @digit = digit
    @digit_array << involves_nine
    @digit_array << involves_four
    @digit_array << involves_five
    @digit_array << involves_one
    @numeral_array.unshift(array_to_string(@digit_array))
  end

  def roman(number)
    number_array(number).each_with_index { |d, i|
      @digit = d.to_i
      @index = i
      @digit_array = []
      roman_digit(@digit)
    }
    array_to_string(@numeral_array)
  end


  def number_array(number)
    number.to_s.split("").reverse
  end


private

  def array_to_string(array)
    array.join("")
  end

  def involves_nine
    if @digit == 9
      @digit -= 9
      return @nines[@index]
    end
  end

  def involves_four
    if @digit == 4
      @digit += 1
      return @ones[@index]
    end
  end

  def involves_five
      if [4, 5, 6, 7, 8].include?(@digit)
        @digit -= 5
        return @fives[@index]
      end
  end

  def involves_one
    @ones[@index] * @digit
  end

end
