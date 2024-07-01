n,m,l=gets.chomp.split(" ").map(&:to_i)

####n*mの行列の取得
require "matrix"
$mat=Array.new(n)
for i in 0..n-1 do
 $mat[i]=gets.chomp.split(" ").map(&:to_i)
end
a=Matrix[*$mat]

####m*lの行列の取得
$matb=Array.new(m)
for i in 0..m-1 do
 $matb[i]=gets.chomp.split(" ").map(&:to_i)
end
b=Matrix[*$matb]
c=(a*b).to_a

#2重リストの半角区切り出力
for i in 0..n-1 do
print"#{c[i].join(' ')}\n"
end 
