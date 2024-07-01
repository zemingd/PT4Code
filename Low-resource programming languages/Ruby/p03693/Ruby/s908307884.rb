# カードを左から順に赤、緑、青色の順に並べ、
# 左から整数を読んだときにこれが 4 の倍数であるか判定
val = gets.chomp.split(" ").join.to_i
ans = val % 4

# AtCoDeer君が作った 3 桁の整数が
# 4 の倍数ならば YES、そうでないならば NO を出力しなさい。
if ans == 0
  puts 'YES'
else
  puts 'NO'
end