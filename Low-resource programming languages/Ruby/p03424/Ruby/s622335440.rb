n = gets.to_i
s = gets.chomp.split(" ")
a = s.count{|color|color == "Y"}
if a != 0
  puts "Four"
else
  puts "Three"
end