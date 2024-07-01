N = gets.to_i
W = gets.chomp.split.map(&:to_i)

p (0..N-2).map{|i| ((W[0..i]).inject(:+) - (W[i+1..N-1]).inject(:+)).abs}.min