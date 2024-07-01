n = gets.to_i
a = gets.split().map(&:to_i)
for i in 1..n
  ans = 0
  a.each do |j|
    if j == i
      ans += 1
    end
  end
  puts ans
end
