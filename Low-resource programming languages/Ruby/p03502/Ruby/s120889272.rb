N = gets.to_i

f = N.to_s.chars.map(&:to_i).reduce(&:+)

puts (N % f).zero? ? 'Yes' : 'No'
