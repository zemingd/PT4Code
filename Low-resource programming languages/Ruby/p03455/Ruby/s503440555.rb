# スペース区切りの整数の入力
a,b=gets.chomp.split(" ").map(&:to_i);
 
# 出力
if (a*b)%2 == 0 then
  print("Even\n")
else
  print("Odd\n")
end