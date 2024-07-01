c = gets.chomp
arr = gets.chomp.split(' ').map(&:to_i)
arr = arr.sort
puts arr[arr.size/2] - arr[arr.size/2-1]