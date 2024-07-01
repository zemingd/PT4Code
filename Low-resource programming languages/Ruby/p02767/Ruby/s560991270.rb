N = gets.to_i
X = gets.chomp.split(' ').map(&:to_i)

sum = X.inject(:+)
point = (sum.to_f / N.to_f).round
hp = X.inject(0) {|memo, i| memo+((point-i).abs ** 2)}

puts hp
