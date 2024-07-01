N, K = gets.split.map(&:to_i)
D = gets.split

puts (N..10000).find {|x| (x.to_s.chars & D).empty?}