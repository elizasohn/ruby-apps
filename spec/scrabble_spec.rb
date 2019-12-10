require ('rspec')
require ('scrabble')

describe("String#Scrabble") do
  it("returns a scrabble score for a letter") do
    expect("a".scrabble()).to(eq(1))
  end
  it("returns the sum of scores for multiple letters") do
  expect("ae".scrabble()).to(eq(2))
  end
  it("returns a scrabble score of two for each two point letter") do
    expect("dg".scrabble()).to(eq(4))
  end
  it("returns a scrabble score of three for each three point letter") do
    expect("bcm".scrabble()).to(eq(9))
  end
  it("returns a scrabble score of four for each four point letter") do
    expect("fh".scrabble()).to(eq(8))
  end
  it("returns a scrabble score of five for each five point letter") do
    expect("k".scrabble()).to(eq(5))
  end
  it("returns a scrabble score of eight for each eight point letter") do
    expect("jx".scrabble()).to(eq(16))
  end
  it("returns a scrabble score of ten for each ten point letter") do
    expect("q".scrabble()).to(eq(10))
  end
end
