N = gets.to_i
S = gets.chomp.chars
p (0...N).count{S.rotate![0..2].join == "ABC"}
