k = gets.chomp.to_i
a, b = gets.chomp.split(" ").map {|i| i.to_i}

base = a / k
if a % k == 0
  puts "OK"
elsif b % k == 0
  puts "OK"
elsif base*k + k < b
  puts "OK"
else
  puts "NG"
end