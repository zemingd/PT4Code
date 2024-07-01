#入力
num = gets.chomp.split(" ").map(&:to_i).join
#出力

ans = num % 4 == 0 ? 'YES' : 'NO'
puts ans