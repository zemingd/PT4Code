N = gets.to_i
arr = gets.split.map(&:to_i)

arr_with_i = arr.map.with_index do|num, index|
  [num, index + 1]
end

sorted_arr = arr_with_i.sort_by { |num, i| num }

puts sorted_arr.map { |_num, i| i }.join(" ")