n, y = gets.split.map(&:to_i)

y/=1000
y-=n # 全部千円の場合の不足額
# p y
m=y%4; y-=9*m # 万札必要量
m=y/36*4; y%=36 # 万札貪欲
g=y/4 # 五千円札
s=n-m-g # 残りが千円札
puts [m, g, s] * " "