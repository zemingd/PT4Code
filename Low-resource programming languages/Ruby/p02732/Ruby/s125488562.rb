def solve
  n = gets.to_i
  arr = gets.split.map!(&:to_i)
  arr_grouped_by = arr.group_by(&:itself).map { |key, value| [key, value.count] }.to_h
  total_value = arr_grouped_by.map { |key, value| (value * (value - 1)) / 2 }.inject(&:+)
  n.times do |i|
    index = arr[i]
    total_value_v2 = total_value
    arr_grouped_by[index] = arr_grouped_by[index] - 1
    p total_value_v2 - arr_grouped_by[index]
    arr_grouped_by[index] = arr_grouped_by[index] + 1
  end
end
solve