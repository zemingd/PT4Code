n = gets.to_i

sum = n.to_s.split('').map(&:to_i).inject(:+)

puts (n % sum).zero? ? 'Yes' : 'No'
