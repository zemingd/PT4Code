a, b = gets.chomp.split.map(&:to_i)
puts (1..100).bsearch {|x| (x * 0.08).to_i >= a && (x * 0.10).to_i >= b } || -1