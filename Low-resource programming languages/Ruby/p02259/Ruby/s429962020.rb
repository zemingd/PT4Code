n = gets.to_i
arr = gets.chomp.split(" ").map(&:to_i)

flag = true
i = 0
sort_num = 0
while flag do
  flag = false
  ((i+1)..(n-1)).reverse_each do |j|
    if arr[j] < arr[j-1]
      org_arr_j = arr[j]
      arr[j] = arr[j-1]
      arr[j-1] = org_arr_j
      sort_num += 1
      flag = true
    end
  end
  i += 1
end

puts arr.join(' ')
puts sort_num
