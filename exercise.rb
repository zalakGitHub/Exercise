class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
      string = ('A'..'Z')

    result = str.split.each do |sequence|
      if sequence.length > 4 
        if string.include? sequence[0]
          sequence.replace ("Marklar")
        else
          sequence.replace ("marklar")
        end
      end
    end

    return result.join(" ")

  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
      numbers = [1,1]
      index = 1

    while index < (nth - 1) do
      numbers.push(numbers[index] + numbers[(index-1)])
      index += 1
    end

    sum = 0

    numbers.each do |index|
      if index.even?
        sum = sum + index 
      end
    end

    return sum

  end

end
