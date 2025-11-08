class StringCalculator
  def add(numbers)
    return 0 if numbers.nil? || numbers.empty?

    delimiters = [",", "\n"]

    # Combine all delimiters to one regex
    regex = Regexp.union(delimiters)

    # Now split numbers string correctly
    nums = numbers.split(regex).reject(&:empty?).map(&:to_i)

    nums.sum
  end
end