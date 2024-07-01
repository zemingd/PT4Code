B = $<.read.split
A = B.shift 9
H = {}
B[1..-1].each {|b| H[b]=1}
puts %w"012 345 678 036 147 258 048 246".any? {|l|
  l.chars.all? {|c| H[A[c.to_i]]}
} ? :Yes : :No