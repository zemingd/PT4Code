n = gets.to_i
array = []
i = 1
n.times do
  a = gets.strip.split
  a[1] = a[1].to_i
  a.push(i)
  array << a
  i += 1
end

i = 0
array.sort_by!{|a,b,c|-b}
result = array.sort_by{|a,b,c| [a, i += 1]}


result.each do |ele|
  puts ele[2]
end