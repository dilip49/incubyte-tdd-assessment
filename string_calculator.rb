class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    
    if numbers.start_with?("//")
      delimiter, numbers = numbers[2..].split("\n", 2)
      numbers.split(Regexp.union(delimiter, "\n")).map(&:to_i).sum
    else
      numbers.split(/,|\n/).map(&:to_i).sum
    end
  end
end