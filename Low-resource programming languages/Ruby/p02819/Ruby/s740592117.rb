def is_prime?(x)
  if x <= 1
    return false
  end
  i = 2
  while i * i <= x do
    if x % i == 0
      return false
    end
    i += 1
  end
  true
end

x = gets.to_i

p = x
while !is_prime? p
  p = p+1
end
p p
