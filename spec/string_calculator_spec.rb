# frozen_string_literal: true

require_relative '../string_calculator'

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(calculator.add('')).to eq(0)
    end

    it 'returns the number itself when given a single number' do
      expect(calculator.add('1')).to eq(1)
    end

    it 'returns the sum of two numbers separated by a comma' do
      expect(calculator.add('1,2')).to eq(3)
    end

    it 'returns the sum of multiple comma-separated numbers' do
      expect(calculator.add('1,2,3,4')).to eq(10)
    end

    it 'returns the sum of numbers separated by commas or new lines' do
      expect(calculator.add("1\n2,3")).to eq(6)
    end

    it 'supports different delimiters when specified' do
      expect(calculator.add("//;\n1;2")).to eq(3)
    end

    it 'raises an exception for a negative number' do
      expect { calculator.add('1,-2,3') }.to raise_error('negative numbers not allowed: -2')
    end

    context 'when custom delimeters is start(*)' do
      it 'returns the multiplication of numbers' do
        expect(calculator.add("//*\n3*2")).to eq(6)
      end
    end
  end
end
