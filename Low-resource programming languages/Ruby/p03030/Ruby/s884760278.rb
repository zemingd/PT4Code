z = 1
n = gets.to_i
array = []
n.times do
  a,b = gets.split
  b.to_i
  array << [a,b,z]
  z += 1
end

array.sort!{|a,b| a[1] <=> b[1]}
array.reverse!
array.sort!{|a,b| a[0] <=> b[0]}
for i in 0..(n-1)
  puts array[i][2]
end
