N = gets.to_i
W = gets.split.to_a.map!(&:to_i)
ansers = []
N.times do |t|
	ansers << (W[0..t].inject(:+) - W[(t + 1)..N].inject(:+)).abs
end
puts ansers.min