N, A, B, C, D, E = readlines.map(&:to_i)

puts 5 + [A, B, C, D, E].map{|x| (N / x.to_f).ceil - 1}.max