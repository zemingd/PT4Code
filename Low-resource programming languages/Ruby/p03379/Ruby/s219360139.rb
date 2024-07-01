n = gets.chop.to_i
x = gets.chop.split.map(&:to_i)
center = n / 2 - 1
n.times do |i|
  del = x.delete_at(i)
  puts x.sort[center]
  x.unshift(del)
end
