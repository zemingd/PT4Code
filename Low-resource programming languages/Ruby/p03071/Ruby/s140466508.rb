ab = gets.chomp.split.map(&:to_i)
puts ab.uniq.length == 1 ? ab[0] * 2 : ab.max * 2 - 1

