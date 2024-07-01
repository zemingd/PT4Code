list = gets.chomp.split(" ").map{|aa| aa.to_i}
list = list.sort

if list[0] == 5 && list[1] == 5 && list[2] == 7
  puts "YES"
else
  puts "NO"
end