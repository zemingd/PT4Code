N = gets.chomp.to_i
P = gets.chomp.split(" ").join
Q = gets.chomp.split(" ").join

list = (1..N).to_a.permutation(N).map do |a|
  a.join
end

list.sort! do |a, b|
  a <=> b
end

puts (list.index(P) - list.index(Q)).abs