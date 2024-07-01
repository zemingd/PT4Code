arr = gets.chomp.split.map(&:to_i)
arr.sort!
puts arr[0]*10 + arr[1] + arr[2]