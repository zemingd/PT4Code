a, b, x = gets.chomp.split.map(&:to_i)
## a がいらなそうだが、しっかり使って考えないとだめ。
if x < a
  puts "No"
elsif (x - a) < b
  puts "YES"
else
  puts "NO"
end