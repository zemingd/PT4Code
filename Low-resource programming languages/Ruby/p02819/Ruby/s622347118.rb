def is_prime(x)
  (2..x-1).each do |n|
    if x % n == 0
      return false
    end
  end
  return true
end

x = gets.to_i

if is_prime(x)
  puts x
else
  x += 1
  while !is_prime(x)
    x += 1
  end
  puts x
end