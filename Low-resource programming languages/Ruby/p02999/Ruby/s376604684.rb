# X, A  は 0 以上 9 以下の整数です。
# X が A 未満の時 0、
# A 以上の時 10 を出力してください。

input = gets.chomp.split
x = input[0].to_i
a = input[1].to_i

if x < a
  puts 0
else
  puts 10
end
