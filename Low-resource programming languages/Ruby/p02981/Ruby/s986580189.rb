n, a, b = gets.chomp.split(' ').map(&:to_i)
bus = n * a
puts fee = bus < b ? bus : b