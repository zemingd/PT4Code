N = gets.chomp.to_i
ds = gets.chomp.split.map(&:to_i)
puts ds.combination(2).inject(0) {|memo, pair| memo + pair[0] * pair[1]}
