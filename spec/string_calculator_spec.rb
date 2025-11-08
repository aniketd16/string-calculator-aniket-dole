require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  let(:calc) { described_class.new }

  it 'should returns 0 when empty string is given as input' do
    expect(calc.add('')).to eq(0)
  end

  it 'should returns number itself when single number as input' do
    expect(calc.add('1')).to eq(1)
    expect(calc.add('99')).to eq(99)
  end

  it 'should handles multiple numbers with comma-separated' do
    expect(calc.add('1,2,3')).to eq(6)
    expect(calc.add('50,10,10,20')).to eq(90)
  end

  it 'should handles new lines as delimiters' do
    expect(calc.add("4\n5\n6")).to eq(15)
  end

  it 'should returns sum for two comma-separated numbers and delimiters' do
    expect(calc.add("1\n2,3")).to eq(6)
  end

  it 'should supports custom single-char delimiter' do
  end

  it 'should supports multi-char delimiter in brackets' do
  end

  it 'should raises error for negative number' do
  end
end