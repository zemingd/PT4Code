ary = []
ary << gets.to_i
ary << gets.to_i
ary << gets.to_i
ary << gets.to_i
ary << gets.to_i
m = []

for i in 0..4
    pp m[i]= (ary[i]/10.0).ceil*10
end

puts m.inject(:+)
