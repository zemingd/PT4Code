H, W = gets.chomp.split.map(&:to_i)
arr = H.times.map{gets.chomp.chars}
 
2.times{ arr = arr.reject { |line| line.all? { |i| i == "." } }.transpose }
puts arr.map(&:join)