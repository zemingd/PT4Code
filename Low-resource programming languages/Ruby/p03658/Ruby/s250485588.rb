n,k=gets.split.map(&:to_i)
l = gets.split(" ").map(&:to_i).sort.reverse[0...k]
puts l.inject(:+)