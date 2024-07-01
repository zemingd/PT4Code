N = gets.chomp.to_i
Weights = (gets.chomp.split(' ').map(&:to_i))[0..N]

balances = (1.upto(N-1).map do |t|
  smallers, biggers = Weights[0...t], Weights[t...N]
  (biggers.reduce(0, &:+) - smallers.reduce(0, &:+)).abs
end)

puts balances.min
