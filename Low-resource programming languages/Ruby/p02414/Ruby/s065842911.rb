n,m,l = gets.split(" ").map(&:to_i)

a = Enumerator.new {|y|
	n.times {
		y << gets.split(" ").map(&:to_i)
	}
}.to_a
b = Enumerator.new {|y|
	m.times {
		y << gets.split(" ").map(&:to_i)
	}
}.to_a

c = Enumerator.new {|mat|
	n.times {|i|
		mat << Enumerator.new {|line|
			l.times {|j|
				line << (0...m).map {|k|
					a[i][k]*b[k][j]
				}.inject(:+)
			}
		}.to_a
	}
}.to_a

c.each do |line|
	line.each_with_index {|v,idx|
		if idx == line.length-1
			p v
		else
			print v," "
		end
	}
end