times = gets.split.map(&:to_i)
min = 100
times.combination(2).each do |a,b|
  min = a + b if a+b < min
end
puts min