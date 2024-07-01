arr1 = Array.new(3){Array.new(10, 0)}
arr2 = Array.new(3){Array.new(10, 0)}
arr3 = Array.new(3){Array.new(10, 0)}
arr4 = Array.new(3){Array.new(10, 0)}

n = gets.to_i
n.times {
b,f,r,v = gets.split.map(&:to_i)
case b
 when 1
 arr1[f-1][r-1] += v
 when 2
 arr2[f-1][r-1] += v
 when 3
 arr3[f-1][r-1] += v
 else
 arr4[f-1][r-1] += v
end
}

arr1.each do |one|
 print one
end
puts ""
puts "#" * 20

arr2.each do |two|
 print two
end
puts ""
puts "#" * 20

arr3.each do |three|
 print three
end
puts ""
puts "#" * 20

arr4.each do |four|
 print four
end

