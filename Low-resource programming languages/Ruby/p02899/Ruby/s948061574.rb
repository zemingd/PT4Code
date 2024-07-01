n = gets.chomp.to_i
list = gets.chomp.split(" ").map{|aa| aa.to_i}
array = []
for i in 1..n
  number = list.index(i) + 1
  array.push(number)
end

puts array.map{|a| a.to_i} 