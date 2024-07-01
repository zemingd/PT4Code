# 解説を見た

n = gets.to_i
smallest = n.to_s.size

a = 0
while a * a <= n
  a += 1
  next if n % a != 0

  smallest = [smallest, [a.to_s.size, (n/a).to_s.size].max].min

end

puts smallest
