class RomanNumeral

  def initialize
    @numeral
    @numeral_array = []
  end

  def roman(number)
    @number = number
    @numeral_array << involves_minus_one
    @numeral_array << involves_five
    @numeral_array << involves_one
    array_to_string
  end

private

  def array_to_string
    @numeral_array.join("")
  end

  def involves_minus_one
    if [4, 9].include?(@number)
      @number += 1
      return "I"
    end
  end

  def involves_five
      if [4, 5, 6, 7, 8].include?(@number)
        @number -= 5
        return "V"
      end
  end


  def involves_one
    "I" * @number
  end

end
