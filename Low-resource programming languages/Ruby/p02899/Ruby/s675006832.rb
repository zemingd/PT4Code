N = gets.to_i
array1 = gets.split(" ").map{|item| item.to_i}
array2 = []

for i in 0...N
  order = array1[i]
  array2[order-1] = i+1
end

puts array2.join(" ")