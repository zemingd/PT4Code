N = gets.to_i
x_list = gets.split.map(&:to_i)
sorted_x_list = x_list.sort
mid_i = sorted_x_list.size / 2 - 1
mid = sorted_x_list[mid_i]

N.times do |i|
  x = x_list[i]
  ans =
    if x <= mid
      sorted_x_list[mid_i + 1]
    else
      mid
    end
  puts ans
end
