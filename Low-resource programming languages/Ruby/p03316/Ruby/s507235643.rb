n = gets.to_i
s_n = n.to_s.split('').map(&:to_i).inject(:+)

puts n % s_n == 0 ? 'Yes' : 'No'
