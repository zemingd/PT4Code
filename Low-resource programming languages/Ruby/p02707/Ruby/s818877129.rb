n = gets.to_i
ans = Array.new(n, 0)
gets.split.map(&:to_i).each do |ai|
  ans[ai - 1] += 1
end
puts ans
