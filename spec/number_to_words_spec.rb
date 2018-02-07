require('rspec')
require('pry')
require('to_words')
require('numbers_to_words')

describe('#numbers_to_words') do
  it("translates the number 0 to the word 'zero'") do
    number_nil = Number.new(0)
    expect(number_nil.translate_number()).to(eq("zero"))
  end
  it("translates the number 1 to the word 'one'") do
    number_one = Number.new(1)
    expect(number_one.translate_number()).to(eq("one"))
  end
  it("translates the number 14 to the word 'fourteen'") do
    number_teen = Number.new(14)
    expect(number_teen.translate_number()).to(eq("fourteen"))
  end
  it("translates the number 99 to the word 'forty-three'") do
    number_a = Number.new(99)
    expect(number_a.translate_number()).to(eq("ninety nine"))
  end
  it("translates the number 523 to the word 'five hundred twenty three'") do
    number_hundred_two = Number.new(999)
    expect(number_hundred_two.translate_number()).to(eq("nine-hundred ninety nine"))
  end
end
