require ('rspec')
require ('numbers_to_words')

describe("Fixnum#To_Word")do
  it("returns a word for a single digit") do
    expect("1".to_word()).to(eq("one "))
  end
  it("returns a word for a two digit number") do
    expect("52".to_word()).to(eq("fifty two "))
  end
  it("returns a word for a three digit number") do
    expect("152".to_word()).to(eq("one hundred fifty two "))
  end
  it("returns a word for a six digit number") do
    expect("152152".to_word()).to(eq("one hundred fifty two thousand,  one hundred fifty two "))
  end
  it("returns a valid single word for 11-19") do
    expect("15".to_word()).to(eq("fifteen "))
  end
end
