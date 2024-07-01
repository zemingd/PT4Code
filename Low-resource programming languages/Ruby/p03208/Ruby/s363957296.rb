n1,n2 = gets.chomp.split(" ").map(&:to_i)
high = Array.new(n1, 0)
for i in 0..n1 - 1
  high[i] = gets.to_i
end
high = high.sort
ans = 10**10
for i in 0..n1 - n2
  if ans > high[i + n2 - 1] - high[i]
    ans = high[i + n2 - 1] - high[i]
  end
end
puts ans
