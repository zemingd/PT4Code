tenant = 4.times.map {
	3.times.map {
		[0] * 10
	}
}

gets.to_i.times do
	b, f, r, v = gets.split.map(&:to_i)
	tenant[b - 1][f - 1][r - 1] += v
end

puts 4.times.map {|b|
	3.times.map do |f|
		' ' + tenant[b][f].join(' ') + "\n"
	end.join
}.join("#" * 20 + "\n")