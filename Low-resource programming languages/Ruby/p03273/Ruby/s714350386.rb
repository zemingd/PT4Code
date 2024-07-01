H,W = gets.split.map(&:to_i)
ans = readlines.map(&:chomp)
ans.delete_if {|a| !a.include?("#") }.map!(&:chars)
puts ans.transpose.select {|a| a.include?("#") }.transpose.map(&:join)
