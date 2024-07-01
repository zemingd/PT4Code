def gets_nums
    gets.split.map{|x| x.to_i}
end
a, v, _ = *gets_nums
b, w, _ = *gets_nums
t, _ = *gets_nums

sign = a < b ? +1 : -1
a1 = a+v*t*sign
b1 = b+w*t*sign
puts a < b && b1 <= a1 || b < a && a1 <= b1 ? 'YES' : 'NO'
