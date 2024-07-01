r = gets.to_i

if r < 1200
  puts "ABC"
elsif 1200 <= r && r <= 2800
  puts "ARC"
elsif 2800 < r
  puts "AGC"
end