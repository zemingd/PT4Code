n, m, l = gets.split.map(&:to_i)
A = n.times.map{gets.split.map(&:to_i)}
B = m.times.map{gets.split.map(&:to_i)}

n.times do |i|
	_Ai = A[i]
	puts l.times.map {|j|
		m.times.map{|k| _Ai[k] * B[k][j]}.inject(&:+)
	}.join(' ')
end