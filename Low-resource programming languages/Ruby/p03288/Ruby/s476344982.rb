#入力
r = gets.to_i

# こたえ
if r < 1200
  puts "ABC"
elsif r >= 1200 && r <= 2800 
  puts "ARC"
else
  puts "AGC"
end