require ('rspec')
require ('clock_angle')

describe("String#clock_angle") do
  it('should convert hours into degrees') do
    expect("00:00".clock_angle).to(eq(0))
  end
  it('should convert minutes into smaller degrees') do
    expect(":15".clock_angle).to(eq(82.5))
  end
  it('should convert a time over 12h into an appropriate angle') do
    expect("18:15".clock_angle).to(eq(97.5))
  end
end
