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

arr1.each do |one|
 print one
end
puts "#" * 20

arr2.each do |two|
 print two
end
puts "#" * 20

arr3.each do |three|
 print three
end
puts "#" * 20

arr4.each do |four|
 print four
end
