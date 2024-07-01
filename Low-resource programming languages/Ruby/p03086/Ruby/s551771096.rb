str = ARGF.gets.chomp
max = str.scan(/[ATCG]+/).map{ |e| e.size }.max
puts max.nil? ? 0:max
