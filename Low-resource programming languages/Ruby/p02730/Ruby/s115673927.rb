line = gets.chomp
n = line.size
array1 = []
array2 = []

(0..((n-3)/2)).each do |i|
   array1.push(line[i])
end

((n+1)/2..(n-1)).each do |i|
   array2.push(line[i])
end

if array1 == array2
  puts "yes"
else
  puts "No"
end
  