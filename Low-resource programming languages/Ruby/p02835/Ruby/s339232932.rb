# a, b, c = gets.chomp.split(' ').map(&:to_i)
# 文字列をわたしてやらないといけない
A = gets.chomp.split.map(&:to_i)

# if ((a + b + c) < 21) → 文字列を見ていない
if (A[0] + A[1] + A[2]) <= 22 # 要素の１番目+２番目+３番目
  puts "win"
else
  puts "bust"
end