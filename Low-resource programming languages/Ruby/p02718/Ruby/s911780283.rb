n, m = gets.chomp.split(' ').map(&:to_i)
arys = gets.chomp.split(' ').map(&:to_i)
sums = arys.inject(:+)
min_base_point = sums / (4*m)

ans_size = arys.select { |num| num >= min_base_point}.size
puts ans_size >= m ? 'Yes' : 'No'