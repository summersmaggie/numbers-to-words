class Number
  def initialize(number)
    @number = number
  end

  def translate_number
    digit_names = {
      0 => "zero",
      1 => "one",
      2 => "two",
      3 => "three",
      4 => "four",
      5 => "five",
      6 => "six",
      7 => "seven",
      8 => "eight",
      9 => "nine",
      10 => "ten",
      11 => "eleven",
      12 => "twelve",
      13 => "thirteen",
      14 => "fourteen",
      15 => "fifteen",
      16 => "sixteen",
      17 => "seventeen",
      18 => "eighteen",
      19 => "nineteen" ,
      20 => "twenty",
      30 => "thirty",
      40 => "forty",
      50 => "fifty",
      60 => "sixty",
      70 => "seventy",
      80 => "eighty",
      90 => "ninety",
      100 => "hundred",
      1000 => "thousand",
      1000000 => "million" }

    number_array = @number.to_s.split("").reverse
    number_length = number_array.count

    if @number == 0
      digit_names.fetch(@number)
    elsif number_length < 3
      digit_names.fetch((number_array[1] + "0").to_i).to_s + " " + digit_names.fetch(number_array[0].to_i).to_s
      # binding.pry
    elsif number_length == 3
      digit_names.fetch((number_array[2]).to_i).to_s + "-hundred " + digit_names.fetch((number_array[1] + "0").to_i).to_s + " " + digit_names.fetch(number_array[0].to_i).to_s
    else
      digit_names.fetch(@number)
      # digit_names.fetch(number_array.reverse.join.to_i).to_s
    end
  end
end
