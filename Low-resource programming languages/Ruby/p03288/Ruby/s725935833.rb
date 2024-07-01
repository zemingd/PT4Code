r = gets.to_i

if r <= 1199
  puts "ABC"

elsif 1200 <= r && r <= 2800
  puts "ARC"
elsif 2801 <= r
  puts "AGC"
end