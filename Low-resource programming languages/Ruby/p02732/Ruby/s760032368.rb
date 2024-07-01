a = gets
items = gets.split

for x in 0...items.length
  target = items.dup
  target.delete_at(x)

  puts target.group_by{|a| a}.values.map{|b|
    size = b.length
    (size * (size - 1))/2
  }.inject(0){|n, m| n + m}
end
