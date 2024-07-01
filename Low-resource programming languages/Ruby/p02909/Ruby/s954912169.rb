s = gets.chomp

arr = ['Sunny', 'Cloudy', 'Windy']
ind = arr.find_index(s)

if ind == 2
  p arr[0]
else
  p arr[ind+1]
end