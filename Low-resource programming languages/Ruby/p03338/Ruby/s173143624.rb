N = gets.to_i
S = gets.chomp

puts (1 ... N).map{|i| (S[0, i].split(//) & S[i .. -1].split(//)).size}.max