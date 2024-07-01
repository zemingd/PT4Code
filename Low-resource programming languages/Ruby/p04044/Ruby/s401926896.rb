N, L = gets.chomp.split(" ").map(&:to_i)

puts Array.new(N).map{gets.chomp}.sort.join
