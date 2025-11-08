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

  it 'should handles multiple numbers' do
  end

  it 'should returns sum for two comma-separated numbers' do
  end

  it 'should handles new lines as delimiters' do
  end

  it 'should supports custom single-char delimiter' do
  end

  it 'should supports multi-char delimiter in brackets' do
  end

  it 'should raises error for negative number' do
  end
end