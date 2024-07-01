n, m = gets.split.map(&:to_i)
ar = Array.new(n, 2) + Array.new(m, 1)
cnt = 0
ar.combination(2).each do |a, b|
  cnt += 1 if (a + b).even?
end
puts cnt
