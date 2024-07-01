N,M = gets.split.map &:to_i
as = gets.split.map &:to_i
cs = []
M.times {
  b,c = gets.split.map &:to_i
  cs += [c] * b
}

if as.size > cs.size
  cs += [0] * (as.size - cs.size)
end

as.sort!
cs.sort!

p (0...as.size).reduce(0){ |a,i|
  a + [as[i], cs[-i-1]].max
}