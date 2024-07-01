a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
d = gets.chomp.to_i
e = gets.chomp.to_i

arr_for_whole_sum = [a,b,c,d,e]

whole_sum = 0
arr_for_whole_sum.each do |v|
  whole_sum += v
end

arr_for_distance_from_10 = []
arr_for_whole_sum.each do |v|
  arr_for_distance_from_10 << (10- (v.to_s.split("")[-1].to_i))
end

rest_sum = 0
arr_for_distance_from_10.delete 10
arr_for_distance_from_10.sort!
arr_for_distance_from_10.delete_at(-1)

arr_for_distance_from_10.each do |v|
  rest_sum += v
end

p whole_sum + rest_sum
