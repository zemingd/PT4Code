N = gets.to_i
ans = (1..N).select(&:odd?).select do |n|
  (1..n).count { |m| n % m == 0 } == 8
end.count
puts ans
