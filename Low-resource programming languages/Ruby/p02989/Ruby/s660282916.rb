n = gets.to_i
arr = gets.chomp.split(' ').map(&:to_i).sort!
puts arr[n/2] - arr[(n/2)-1]
