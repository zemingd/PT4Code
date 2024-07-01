r = gets.strip.to_i
if r < 1200
  puts "ABC"
elsif r >= 1200 && r < 2800
  puts "ARC"
else
  puts "AGC"
end