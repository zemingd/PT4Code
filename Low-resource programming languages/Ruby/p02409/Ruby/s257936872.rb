a = Array.new(4)
a.each { |o|
  o = Array.new(3)
  o.each { |p| p = Array.new(10, 0) }
}

gets.to_i.times {
  b,f,r,p = gets.chomp.split(" ").map &:to_i

  a[b-1][f-1][r-1] += p
}