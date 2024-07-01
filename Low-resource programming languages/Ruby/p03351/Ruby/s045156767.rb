# # 整数の入力
# a = gets.to_i
# # スペース区切りの整数の入力
# b,c=gets.chomp.split(" ").map(&:to_i);
# # 文字列の入力
# s = gets.chomp
# # 出力
# print("#{a+b+c} #{s}\n")

a,b,c,x=gets.chomp.split(" ").map(&:to_i);
# puts a
# puts b
# puts (a-b)
# puts (b-c).abs
# puts x
if (a-b).abs <= x && (b-c).abs <= x

  puts "Yes"
else
  puts "No"
end
