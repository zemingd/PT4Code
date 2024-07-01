H,N,*A = `dd`.split.map &:to_i
puts H <= A.reduce(:+) ? :Yes : :No