a, b = gets.chomp.split(' ').map(&:to_i)
x1 = (1..a).to_a.inject('') { |c, _| c + b.to_s }
x2 = (1..b).to_a.inject('') { |c, _| c + a.to_s }
puts [x1, x2].sort.first