a,b = gets.split(" ").map(&:to_i)
s = gets.chomp
flag = true
s.split("").each_with_index do |x, i|
  flag = false if (i != a && !['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'].include?(x)) || (i == a && x != '-')
end
puts flag ? "Yes" : "No"