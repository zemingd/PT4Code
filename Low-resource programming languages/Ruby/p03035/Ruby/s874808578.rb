# 入力
a,b = gets.chomp.split.map(&:to_i)

# こたえ
if a >= 13
  puts b
elsif a <= 12 && a >= 6
  puts b/2
else
  puts 0
end