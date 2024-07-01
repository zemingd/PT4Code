n = gets.strip.to_i
ary = gets.strip.split("").map(&:to_i)
ans = 0
ary.combination(2) do |i, k|
  ans += i * k
end
puts ans