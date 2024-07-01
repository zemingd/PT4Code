n = gets.to_i
a = []
n.times { a << gets.to_s }
b = a.uniq.sort
tmp = b.map do |aa|
  c = a.select { |n| n == aa }
  c.length
end
num = tmp.max
array = tmp.each_with_index.each_with_object([]){|(e, i), acc| acc << i if e == num}
array.each do |ary|
  puts b[ary]
end