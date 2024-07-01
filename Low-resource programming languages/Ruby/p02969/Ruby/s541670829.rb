N = gets.to_i
A = readlines.map(&:to_i)

tmp = []

N.times do |ai|

	tmp = A.dup
	tmp.delete_at(ai)
	puts tmp.max

end