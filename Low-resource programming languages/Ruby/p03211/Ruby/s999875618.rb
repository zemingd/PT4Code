S = gets
p (0..S.size - 2).map {|i| (753 - S[i..i + 2].to_i).abs}.min
