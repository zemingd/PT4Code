N=gets.chomp.to_i
D=gets.chomp.split.map(&:to_i)
total=D.combination(2).inject(0){|sum, attr| sum += attr[0]*attr[1]}

puts total