n = gets.chomp
sum = n.split('').map(&:to_i).inject(:+)

p (n.to_i % sum).zero? ? 'Yes' : 'No'
