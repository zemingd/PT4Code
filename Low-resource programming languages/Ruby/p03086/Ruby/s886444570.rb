t = gets.chomp
r = t.match(/[ATCG]+/).to_s.size

l = t.reverse.match(/[ATCG]+/).to_s.size


puts r >= l ? r : l;