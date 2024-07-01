# 入力
s = gets.chomp.chars

# こたえ
if (s.uniq).size > 1
  puts "Yes"
else
  puts "No"
end