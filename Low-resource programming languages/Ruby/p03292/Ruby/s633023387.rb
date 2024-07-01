arr = gets.split.map(&:to_i)
arr.sort!
puts arr[1] - arr[0] + arr[2] - arr[1]