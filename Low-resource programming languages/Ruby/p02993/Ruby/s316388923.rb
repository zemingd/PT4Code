a,b,c,d = gets.chomp.split('').map(&:to_i)
if a == b | b == c | c == d
  puts "Bad"
else
  puts "Good"
end