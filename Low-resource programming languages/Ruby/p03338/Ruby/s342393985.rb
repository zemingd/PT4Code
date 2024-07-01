n = STDIN.gets.chomp.to_i
s = STDIN.gets.chomp
 
cs = s.chars.uniq
rs = cs.map {|c|
  (s.index(c)..s.rindex(c))
}
 
puts n.times.map {|i|
  rs.select {|r| r.include?(i+1) }.count
}.max