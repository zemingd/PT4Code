def calc_divisors(n)
  puts divisors = []
  for i in 1..n
    if n % i == 0
      divisors << i
    end
  end
  return divisors
end

n = gets.to_i

num = 0
for i in 1..n
  next if i % 2 == 0
  divisors = calc_divisors(i)
  if divisors.length == 8
    num += 1
  end
end
puts num
