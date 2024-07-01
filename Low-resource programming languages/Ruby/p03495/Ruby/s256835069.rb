N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

bunpu = (1..N).map { |n| A.count(n) }
bunpu.sort! {|a, b| b <=> a }

delnum = bunpu[0...K]
puts N - delnum.inject(:+)