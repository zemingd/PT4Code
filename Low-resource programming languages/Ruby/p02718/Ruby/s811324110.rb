n, m = gets.chomp.split(' ').map(&:to_i)
arys = gets.chomp.split(' ').map(&:to_i)
sums = arys.inject(:+)
min_base_point = sums / (4*m)

not_ans_size = arys.select { |num| num < min_base_point }.size
puts (n-not_ans_size) >= m ? 'Yes' : 'No'