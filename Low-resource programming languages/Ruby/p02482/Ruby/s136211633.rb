a = gets.chomp.split.map{|s|s.to_i}
if a[0] < a[1] then
  puts "a < b"
elsif a[0] == a[1] then
  puts "a == b"
else
  puts "a > b"
end