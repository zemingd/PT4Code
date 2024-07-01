arr = gets.chomp.split.map(&:to_i).sort
sum = arr[1]
arr[1] -= 1
arr.sort!
sum += arr[1]
puts sum