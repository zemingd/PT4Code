n = gets.to_i
arr = gets.split.map(&:to_i).sort
a = arr[n/2 - 1]
b = arr[n/2]
puts b - a
