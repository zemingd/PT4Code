N = gets.to_i
A = gets.split.map(&:to_i)
puts A.each_with_index.sort.map{|a, idx| idx + 1}.join(" ")