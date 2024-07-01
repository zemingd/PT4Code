gets
puts (0 < gets.scan(/\d+/).inject(0) {|x,s| x ^= s.to_i} ? 'NO' : 'YES')