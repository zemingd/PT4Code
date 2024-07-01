s = gets.chop.to_s

arr = ['Sunny', 'Cloudy', 'Windy']
ind = arr.find_index(s)
if ind == 2
  next = 0
else
  next = ind + 1
p arr[next]