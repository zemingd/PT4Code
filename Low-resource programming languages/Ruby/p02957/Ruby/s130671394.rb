a, b = gets.chomp.split.map(&:to_i)

if (a + b)%2 == 0  # 余り 0 の割り算
  puts (a + b) / 2
else
  puts "IMPOSSIBLE"
end

#  計算式わからなかった。。。
