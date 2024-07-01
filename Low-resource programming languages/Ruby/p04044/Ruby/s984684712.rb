N,L = gets.split.map(&:to_i)
puts N.times.map{ gets.chomp.to_s }.sort.join('')
