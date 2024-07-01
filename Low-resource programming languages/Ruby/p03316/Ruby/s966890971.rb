n = gets.chomp
puts (n.to_i % n.split('').map(&:to_i).reduce(:+)).zero? ? 'Yes' : 'No'