# スペース区切りの整数の入力
n,m=gets.chomp.split(" ").map(&:to_i);

# 出力
puts((n+m)*(n+m-1)/2-n*m)