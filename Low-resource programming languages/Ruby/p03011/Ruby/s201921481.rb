times = gets.split.map(&:to_i)
all = times.inject(:+)
min = all
times.each do |x|
  t = all - x
  min = t if t < min
end
puts min
