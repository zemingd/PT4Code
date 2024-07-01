def is_prime?(x)
  max = Math.sqrt(x).floor
  nums = (2..max).to_a
  while ! nums.empty?
    i = nums.shift
    return false if x % i == 0

    nums.delete_if { |j| j % i == 0 }
  end
  true
end

x = gets.to_i
loop do
  if is_prime?(x)
    p x
    break
  end
  x += 1
end
