puts Array.new(gets.to_i) {|i|
  s, p = gets.split
  [i + 1, s, p.to_i]
}
.sort! {|a, b| 
  (a[1] <=> b[1]).nonzero? || (b[2] <=> a[2]) 
}
.map {|a| a[0] }
.join("\n")