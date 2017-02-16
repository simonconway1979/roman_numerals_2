class RomanNumeral

  def initialize
    @numeral
    @numeral_array = []
  end

  def roman(number)
    @number = number
    @numeral_array << involves_five(number)
    @numeral_array << involves_one(number)
    arr_to_str
  end

private

  def arr_to_str
    @numeral_array.join("")
  end

  def involves_five(number)
      if [4, 5, 6, 7, 8].include?(number)
        @number = @number - 5
        return "V"
      end
  end

  def involves_one(number)
    "I" * @number
  end

end
