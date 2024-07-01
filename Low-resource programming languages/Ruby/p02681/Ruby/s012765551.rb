s = gets.chomp
t = gets.chomp.chars

moji = t.take(s.size).join

if s == moji
  puts "Yes"
else
  puts "No"
end