n = gets.chomp.to_i
xs = gets.chomp.split.map(&:to_i)

count = 0
xs.each_cons(3) do |ys|
  _a, b, _c = ys
  count += 1 if ys.min != b && ys.max != b
end
puts count
