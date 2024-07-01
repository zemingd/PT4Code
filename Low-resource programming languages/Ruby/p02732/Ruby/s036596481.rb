a = gets
items = gets.split

for x in 0...items.length
  target = items.dup
  target.delete_at(x)

  puts target.group_by{|x| x}.values.map{|x|
    size = x.length
    (size * (size - 1))/2
  }.sum
end
