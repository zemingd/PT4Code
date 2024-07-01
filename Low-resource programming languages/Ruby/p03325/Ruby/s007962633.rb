_ = gets
a = gets.chomp.split.map(&:to_i)
res = 0
a.each do |i|
  while i % 2 == 0
    res += 1
    i /= 2
  end
end
puts res