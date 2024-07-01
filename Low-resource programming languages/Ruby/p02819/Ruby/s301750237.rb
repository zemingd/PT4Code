def is_prime?(num)
  return false if num <= 1

  2.upto(Math.sqrt(num).floor) do |n|
    return false if num != n && num % n == 0
  end

  true
end

x = gets.to_i

x += 1 until is_prime?(x)
puts x