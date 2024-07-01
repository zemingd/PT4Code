arr1 = Array.new(3){Array.new(10, 0)}
arr2 = Array.new(3){Array.new(10, 0)}
arr3 = Array.new(3){Array.new(10, 0)}
arr4 = Array.new(3){Array.new(10, 0)}

n = gets.to_i
n.times {
b,f,r,v = gets.split.map(&:to_i)
case b
 when 1
 arr1[f-1][r-1] += d
 when 2
 arr2[f-1][r-1] += d
 when 3
 arr3[f-1][r-1] += d
 when 4
 arr4[f-1][r-1] += d
}

p arr1
puts "#" * 20
p arr2
puts "#" * 20
p arr3
puts "#" * 20
p arr4
puts "#" * 20
