n = gets.strip.split('')
s_n = n.map(&:to_i).inject(:+)
n = n.join.to_i

print n % s_n == 0 ? 'Yes' : 'No'