N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)

puts A.map {|a| a - 1}.inject(&:+)