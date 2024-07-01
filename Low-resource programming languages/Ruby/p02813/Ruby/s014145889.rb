n = gets.chomp.to_i
first_arr = gets.chomp.split(' ').map(&:to_i)
second_arr = gets.chomp.split(' ').map(&:to_i)
a,b = [0,0]

arr = []

for i in 1..n do  
  arr << i
end

arr.permutation.to_a.each_with_index do |arr_item, index|
  a = index if arr_item == first_arr
  b = index if arr_item == second_arr
end

print (a-b).abs
