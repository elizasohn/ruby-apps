require ('rspec')
require ('title_case')

describe('String#title_case') do
  it("returns array with with the same length as the input") do
    expect(title_case("His").length).to(eq(3))
  end

  it("should capitalize the first letter of each word") do
    expect(title_case("literally anything")).to(eq("Literally Anything"))
  end
  it("should switch non-first letters to lower case") do
    expect(title_case("TyPiNg LiKe ThIs MaKEs ME LoOk COoL")).to(eq("Typing Like This Makes Me Look Cool"))
  end
  it("should not capitalize words like of, in, the, etc.") do
    expect(title_case("don't try the food")).to(eq("Don't Try the Food"))
  end
  it("should work with multiple sentences without throwing tons of errors") do
    expect(title_case("this is a test. See?")).to(eq("This is a Test. See?"))
  end
end
