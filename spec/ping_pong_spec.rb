require ('rspec')
require ('ping_pong')

describe('Fixnum#ping_pong') do
  it("returns an array of numbers counting up to the number given") do
    expect(ping_pong(2)).to(eq([1,2]))
  end
  it("numbers divisible by 3 are converted to the string Ping") do
    expect(ping_pong(3)).to(eq([1,2,'ping']))
  end
  it("numbers divisible by 5 but not 3 are converted to the string Pong") do
    expect(ping_pong(5)).to(eq([1,2,'ping',4,'pong']))
  end
  it ("numbers ping and pong with really big values properly") do
    expect(ping_pong(15)).to(eq([1,2,'ping',4,'pong','ping',7,8,'ping','pong',11,'ping',13,14,'ping']))
  end
end
