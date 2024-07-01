N, M = gets.split.map(&:to_i)
As = readlines.map{|l| l.split.drop(1).map(&:to_i)}

puts As.reduce(&:&).size