N = gets.to_i
arr = gets.split.map.with_index{|a, id| a.to_i - (id + 1)}
min = arr.min
ans = arr.inject(0){|sum, a| sum += a - min}
puts ans