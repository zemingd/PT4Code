n = gets.chomp.to_i
a= gets.chomp.split.map(&:to_i)
cnt = a.count{|o| o < 0}
sum = 0
n.times { |i|
  sum += a[i].abs
}
if cnt % 2 != 0
  min = a.min_by{|o| o.abs}
  sum -= 2*min.abs
end
puts sum
