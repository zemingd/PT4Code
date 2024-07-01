list = gets.chomp.split(" ").map{|aa| aa.to_i}
n = list[0]
l = list[1]

str = []

for i in 0..n-1
  str[i] = gets.chomp.to_s
end

str = str.sort
puts str.join