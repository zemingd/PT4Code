arr = gets.chomp.split(' ').map(&:to_i).sort
puts arr[0] + arr[1]
