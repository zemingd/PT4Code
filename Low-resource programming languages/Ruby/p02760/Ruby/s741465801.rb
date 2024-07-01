# 入力
a1,a2,a3 = 3.times.map { gets.chomp.split.map(&:to_i) } 
n = gets.to_i
b = n.times.map { gets.to_i } 

# よこ
c1 = a1[0],a2[0],a3[0]
c2 = a1[1],a2[1],a3[1]
c3 = a1[2],a2[2],a3[2]

# ななめ
d1 = a1[0],a2[1],a3[2]
d2 = a1[2],a2[1],a3[0]

# おきかえ
a1 = (a1 & b)
a1 = a1.size
a2 = (a2 & b)
a2 = a2.size
a3 = (a3 & b)
a3 = a3.size
c1 = (c1 & b)
c1 = c1.size
c2 = (c2 & b)
c2 = c2.size
c3 = (c3 & b)
c3 = c3.size
d1 = (d1 & b)
d1 = d1.size
d2 = (d2 & b)
d2 = d2.size

a = [a1,a2,a3,c1,c2,c3,d1,d2]

# こたえ
if a.include?(3)
  puts "Yes"
else
  puts "No"
end