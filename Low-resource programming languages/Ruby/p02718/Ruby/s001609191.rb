n, m = gets.chomp.split(' ').map(&:to_i)
as = gets.chomp.split(' ').map(&:to_i)

min = as.reduce(:+) / (4 * m).to_f
oks = as.reject { |x| x < min }

puts oks.count >= m ? 'Yes' : 'No'
