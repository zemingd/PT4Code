r = gets.to_i
#b,c=gets.chomp.split(" ").map(&:to_i);
#s = gets.chomp

if r < 1200
  puts "ABC"
elsif r < 2800
  puts "ARC"
else 
  puts "AGC"
end
