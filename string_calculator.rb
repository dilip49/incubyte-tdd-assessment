# frozen_string_literal: true

class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = numbers.start_with?('//') ? numbers[2] : /,|\n/

    if delimiter == '*'
      handle_custom_delimeter(delimiter, numbers).reduce(:*)
    else
      handle_custom_delimeter(delimiter, numbers).sum
    end
  end
end

def handle_custom_delimeter(delimiter, numbers)
  numbers = numbers.split("\n", 2).last if numbers.start_with?('//')
  values = numbers.split(delimiter).map(&:to_i)

  negatives = values.select(&:negative?)
  raise "negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?

  values
end
