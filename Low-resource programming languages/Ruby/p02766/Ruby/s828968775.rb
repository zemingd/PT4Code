n, k = gets.chomp.split.map(&:to_f)


num = n
ans = 0

while num > 0
  num  = (num / k).floor
  ans += 1
end

puts ans
