# 入力
x,a = gets.chomp.split.map(&:to_i)

# こたえ
if x >= a
  puts "10"
else
  puts "0"
end