n = gets.to_i
x = gets.chomp.split(" ").map(&:to_i)
ans = 10000000
for i in 1..100
  sum = 0
  for j in 0..n-1
    sum += (i - x[j]) * (i - x[j])
  end
  ans = sum < ans ? sum : ans
end

puts ans