# Kの値を取得
k = gets.chomp.to_i
# a bの値を取得
a, b = gets.chomp.split(' ').map(&:to_i)

if k == 1
  puts "OK"
  exit
end
num = b - a
if num / k >= 1
  puts "OK"
else
  puts "NG"
end


