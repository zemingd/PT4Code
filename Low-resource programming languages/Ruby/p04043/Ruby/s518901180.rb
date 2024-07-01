a = gets.split.map(&:to_i).sort.join
puts a == '557' ? 'YES' : 'NO'