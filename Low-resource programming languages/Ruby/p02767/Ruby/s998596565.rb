n = gets.chomp.to_i
x = gets.chomp.split(' ').map(&:to_i)

ave = (x.inject(:+).to_f / x.size).round
sum = []

n.times do |i|
  sum << (ave - x[i]) ** 2
end

print(sum.inject(:+))
