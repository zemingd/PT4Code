=begin
N = gets.to_i               # 単一整数
a = gets.split.map(&:to_i)  # スペースで区切られた複数の整数
a = N.times.map{gets.to_i}  # 縦に並んだ複数の整数。たまにある
s = gets.chomp              # 文字列。chompを付けないと改行文字がついてくる
=end
N = gets.to_i               # 単一整数
s = gets.chomp              # 文字列。chompを付けないと改行文字がついてくる

if N % 2 == 1 or s[0,N/2] != s[N/2,N/2]
  puts "No"
else
  puts "Yes"
end