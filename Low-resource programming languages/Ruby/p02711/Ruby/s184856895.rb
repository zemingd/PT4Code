n = gets.chomp.split('').map(&:to_i)
puts n.include?(7) ? 'Yes':'No'