num = $stdin.gets.chomp.to_i

if num < 1200
  puts "ABC"
elsif 1200 <= num and num < 2800
  puts "ARC"
else
  puts "AGC"
end