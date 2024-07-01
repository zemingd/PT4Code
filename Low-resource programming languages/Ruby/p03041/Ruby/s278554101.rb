arr = $stdin.gets.chomp.split(" ")
arr.map! do |a_j|
 a_j.to_i
end
str = $stdin.gets.chomp

str[arr[1]-1] = str[arr[1]-1].downcase

puts str