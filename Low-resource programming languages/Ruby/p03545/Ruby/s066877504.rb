def add_or_subtract(numbers, n)
  if numbers.length == 1
    if numbers[0] == n
      return numbers[0].to_s
    else
      return false
    end
  end
    last = numbers[-1]
    candidate1 = add_or_subtract(numbers[0..(numbers.length - 2)], n - last)
    candidate2 = add_or_subtract(numbers[0..(numbers.length - 2)], n + last)
    if candidate1
      return candidate1 + "+#{last.to_s}"
    elsif candidate2
      return candidate2 + "-#{last.to_s}"
    else
      return false
    end
end

numbers = gets.chomp.split("").map(&:to_i)
puts add_or_subtract(numbers, 7) + "=7"
