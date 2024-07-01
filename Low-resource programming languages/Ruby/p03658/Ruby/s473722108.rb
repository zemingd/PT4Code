n,k = gets.chop.split.map(&:to_i)
l = gets.chop.split.map(&:to_i)
l.sort!.reverse!
puts l.slice(0,k).sum