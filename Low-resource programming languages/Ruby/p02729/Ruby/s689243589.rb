n, m = *gets.chomp.split.map(&:to_i)

nc = ([true] * n).combination(2).to_a.length
mc = ([true] * m).combination(2).to_a.length

puts nc + mc