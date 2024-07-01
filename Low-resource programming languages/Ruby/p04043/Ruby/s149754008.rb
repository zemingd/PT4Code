# 整数の入力
a = gets.chomp.split(" ").map(&:to_i)

x = a[0]
y = a[1]
z = a[2]

if (x == 5 && y == 5 && z == 7) || (x == 5 && y == 7 && z == 5)  || (x == 7 && y == 5 && z == 5)
  p "YES"
else
  p "NO"
end
