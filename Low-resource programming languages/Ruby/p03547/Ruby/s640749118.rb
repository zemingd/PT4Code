x,y = gets.chomp.downcase.split(" ").map{|str|str.hex}
if x > y
  puts ">"
elsif x < y
  puts "<"
else
  puts "="
end