def is_prime?(num)
  return false if num <= 1

  2.upto(Math.sqrt(num).floor) do |n|
    return false if num != n && num % n == 0
  end

  true
end

x = gets.to_i

loop do
  if is_prime?(x)
    puts x
    break
  end
  x += 1
end