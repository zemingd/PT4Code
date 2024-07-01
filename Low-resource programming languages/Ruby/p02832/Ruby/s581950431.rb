N,*A = `dd`.split.map &:to_i
k = 1
b = nil
A.each{ |a|
  if k == a
    k += 1
    b = a
  end
}
p b ? N - b : -1