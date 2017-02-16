class RomanNumeral

  def initialize
    @digit_array = []
    @numeral_array = []
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
    array_to_string(roman_digit(number))
  end

private

  def array_to_string(array)
    array.join("")
  end

  def involves_nine
    if @digit == 9
      @digit -= 9
      return "IX"
    end
  end

  def involves_four
    if @digit == 4
      @digit += 1
      return "I"
    end
  end

  def involves_five
      if [4, 5, 6, 7, 8].include?(@digit)
        @digit -= 5
        return "V"
      end
  end


  def involves_one
    "I" * @digit
  end

end
