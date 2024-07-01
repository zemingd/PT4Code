D, N = gets.split.map(&:to_i)

puts (1 .. 1.0/0).lazy.select{|x| x % 100 != 0}.take(N).to_a.last * 100**D