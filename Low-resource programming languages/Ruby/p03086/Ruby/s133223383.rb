res = gets.chomp.scan(/[ATGC]+/).map(&:size)
res << 0
puts res.max