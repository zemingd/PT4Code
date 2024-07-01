N = gets.to_i
A = gets.split.map(&:to_i)
B = A.map.with_index(1) { |a, i| a - i }.sort

b = B[N / 2]

ans = 0

A.each.with_index(1) do |a, i|
  ans += (a - i - b).abs
end

puts ans

