arr = gets.chomp.split.map(&:to_i)
arr.sort!
puts arr[2] * 10 + arr[1] + arr[0]
