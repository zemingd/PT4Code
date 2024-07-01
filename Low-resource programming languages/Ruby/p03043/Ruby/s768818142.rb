n,k = gets.split.map(&:to_i)
ans = 0.0
count = 0
for i in 1..n
  inst = 1/n.to_f
  count = 0
  while i*2**count < k
    inst /= 2
    count += 1
  end
  ans += inst
end

puts ans
