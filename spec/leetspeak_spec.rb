require ('rspec')
require ('leetspeak')

describe('String#leetspeak') do
  it('replaces every "e" in a string with a "3"') do
    expect("elephant".leetspeak).to(eq("3l3ph4nt"))
  end

  it('replaces every "o" in a string with a "0"') do
    expect("boo boo".leetspeak).to(eq("B00 B00"))
  end

  it('replaces every "I" in a string with a "1"') do
    expect("I like Ike".leetspeak).to(eq("1 L1k3 1k3"))
  end

  it('replaces every "s" in a string with a "5"') do
    expect("roses".leetspeak).to(eq("R0535"))
  end

  it('replaces every "A" in a string with 4') do
    expect("lame".leetspeak).to(eq("L4m3"))
  end

  it('replaces letters correctly in a string of words') do
    expect("I scream you scream we all scream for raspberry ice cream".leetspeak).to(eq("1 Scr34m Y0u Scr34m W3 4ll Scr34m F0r R45pb3rry 1c3 Cr34m"))
  end

end
