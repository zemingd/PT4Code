arr = gets.strip.split(' ').map(&:to_i)
result = (arr[0] == arr[1] && arr[0] != arr[2]) ||
    (arr[1] == arr[2] && arr[1] != arr[0]) ||
    (arr[2] == arr[0] && arr[2] != arr[1]) ||
msg = 'No'
msg = 'Yes' if result
puts msg