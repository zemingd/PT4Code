# 上皿天秤は、左の皿に乗っているおもりの重さの合計を L とし、
# 右の皿に乗っているおもりの重さの合計を R としたとき、
# L>R なら左に傾き、L=R なら釣り合い、L<R なら右に傾きます。
# 高橋君は、上皿天秤の左の皿に重さ A のおもりと重さ B のおもりを、
# 右の皿に重さ C のおもりと重さ D のおもりを置きました。
# 上皿天秤が左に傾くなら Left を、釣り合うなら Balanced を、
# 右に傾くなら Right を出力してください。

input_line = gets.chomp.split
a = input_line[0].to_i
b = input_line[1].to_i
c = input_line[2].to_i
d = input_line[3].to_i

left_weight = a + b
right_weight = c + d

if left_weight > right_weight
  puts "Left"
elsif left_weight == right_weight
  puts "Balanced"
else
  puts "Right"
end
