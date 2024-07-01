line = gets.split(" ").map{|n| n.to_i}
X = line[0]
A = line[1]

if X < A then
  puts 0
else
  puts 10
end