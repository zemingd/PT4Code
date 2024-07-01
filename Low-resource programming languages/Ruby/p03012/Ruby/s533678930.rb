N = gets.to_i
W = gets.split.to_a.map!(&:to_i)
ansers = []
N.times do |t|
	ansers << (W[0..t].inject(W[0], :+) - W[(t + 1)..N].inject(W[N - 1], :+)).abs
end
puts ansers.min