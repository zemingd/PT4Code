x, y = gets.chomp.split.map(&:hex)
if x < y
  puts "<"
  exit
elsif x > y
  puts ">"
  exit
end
puts "="
