a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
d = gets.chomp.to_i
e = gets.chomp.to_i

arr_for_whole_sum = [a,b,c,d,e]
whole_sum = arr_for_whole_sum.inject(:+)

arr_for_distance_from_10 = [
  10- a.to_s.split("")[-1].to_i,
  10- b.to_s.split("")[-1].to_i,
  10- c.to_s.split("")[-1].to_i,
  10- d.to_s.split("")[-1].to_i,
  10- e.to_s.split("")[-1].to_i
]

rest_sum = 0
arr_for_distance_from_10.delete(10)
arr_for_distance_from_10.sort!
arr_for_distance_from_10.delete_at(-1)
rest_sum += arr_for_distance_from_10.inject(:+)

p whole_sum + rest_sum