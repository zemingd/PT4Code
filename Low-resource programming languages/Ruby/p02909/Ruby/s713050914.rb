s = gets.chomp

arr = ['Sunny', 'Cloudy', 'Rainy']
ind = arr.find_index(s)
next_ind = 0
if ind < 2
  next_ind += 1
end

puts arr[next_ind].to_s
