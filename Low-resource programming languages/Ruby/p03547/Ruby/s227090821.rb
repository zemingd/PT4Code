A, B = gets.chomp.split
case
when A == B
  puts "="
when A > B
  puts ">"
else
  puts "<"
end
