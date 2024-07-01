N = gets.to_i
D = ["3","5","7"]
def r(s)
  return 0 if s.to_i > N
  k = D.all?{ |d| s.include?(d) }
  (k ? 1 : 0) + D.reduce(0){ |a,b| a + r(b+s) }
end

p D.reduce(0){ |a,b| a + r(b) }