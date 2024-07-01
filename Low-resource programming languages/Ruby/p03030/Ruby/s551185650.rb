SPs = readlines.drop(1).map(&:split)

puts  SPs.map.with_index(1).sort_by{|(s, p), i| [s, -p.to_i]}.map(&:last)