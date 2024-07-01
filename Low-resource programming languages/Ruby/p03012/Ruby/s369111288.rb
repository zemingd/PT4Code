N = gets.to_i
W = gets.split.to_a.map!(&:to_i)
ansers = []
N.times do |t|
	ansers << (W[0..t].inject(0, :+) - W[(t + 1)..N].inject(0, :+)).abs
end
puts ansers.min