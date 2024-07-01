N,*A = `dd`.split.map &:to_i
B = A.map(&:abs)
p B.reduce(:+) - (A.count{ |a| a < 0 } % 2 == 0 ? 0 : B.min*2)