require('rspec')
require('coin')

describe('Fixnum#coin') do
  it("returns proper change in pennies") do
    expect(4.coin()).to(eq('4 pennies'))
  end
  it("returns proper change in dimes") do
    expect(13.coin()).to(eq('1 dime, 3 pennies'))
  end
  it("returns proper change in dimes") do
    expect(23.coin()).to(eq('2 dimes, 3 pennies'))
  end
  it("handles singular and plural") do
    expect(21.coin()).to(eq('2 dimes, 1 penny'))
  end
  it("returns proper change") do
    expect(92.coin()).to(eq('3 quarters, 1 dime, 1 nickel, 2 pennies'))
  end
end
