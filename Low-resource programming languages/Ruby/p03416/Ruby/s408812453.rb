a,b = gets.split(" ")
#上から３桁の数字を取得する
#下二桁のと比較をする

a_a = a.split("")
b_a = b.split("")

a123_s = a_a[0] + a_a[1] + a_a[2]
b123_s = b_a[0] + b_a[1] + b_a[2]

a45_s = a_a[3] + a_a[4]
a12_s = a_a[0] + a_a[1]

b45_s = b_a[3] + b_a[4]
b12_s = b_a[0] + b_a[1]

#文字列を整数へ
a123_i = a123_s.to_i
b123_i = b123_s.to_i

a45_i = a45_s.to_i
a12_i = a12_s.to_i

b45_i = b45_s.to_i
b12_i = b12_s.to_i
 
ans = 0

if  a45_i <= a12_i
    ans = ans + 1
end

if  b45_i >= b12_i
    ans = ans + 1
end

ans = ans + b123_i - a123_i - 1

puts ans