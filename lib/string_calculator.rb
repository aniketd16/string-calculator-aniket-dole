class StringCalculator
  def add(numbers)
    return 0 if numbers.nil? || numbers.empty?

    delimiters = [",", "\n"]

    # Handle single or multi-char delimiter in brackets
    if numbers.start_with?("//")
      header, numbers = numbers.split("\n", 2)
      bracketed = header.scan(/\[(.*?)\]/).flatten
      if bracketed.any?
        delimiters.concat(bracketed)
      else
        delimiters << header[2]
      end
    end

    # Combine all delimiters to one regex
    regex = Regexp.union(delimiters)

    # Now split numbers string correctly
    nums = numbers.split(regex).reject(&:empty?).map(&:to_i)

    nums.sum
  end
end