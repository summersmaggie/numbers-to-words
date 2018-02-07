require('rspec')
require('pry')
require('to_words')
require('numbers_to_words')

describe('#numbers_to_words') do
  it("translates the number 99 to the word 'forty-three'") do
    number_a = Number.new(99)
    expect(number_a.translate_number()).to(eq("ninety nine"))
  end
  # it("translates the number 400 to the word 'four-hundred'") do
  #   number_hundred = Number.new(400)
  #   expect(number_hundred.translate_number()).to(eq("four-hundred"))
  # end
  it("translates the number 523 to the word 'five hundred twenty three'") do
    number_hundred_two = Number.new(999)
    expect(number_hundred_two.translate_number()).to(eq("nine-hundred ninety nine"))
  end
  # it("translates the number 1 to the word 'one'") do
  #   number_one = Number.new(1)
  #   expect(number_one.translate_number()).to(eq("one"))
  # end
end
