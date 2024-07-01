arr = gets.split(' ').map(&:to_i)
puts "#{arr[0] * arr[1]} #{2*(arr[0]+arr[1])}"