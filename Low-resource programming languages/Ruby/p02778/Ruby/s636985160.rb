s = gets.chomp.split('').map(&:to_s)
puts Array.new(s.size, 'x').join
