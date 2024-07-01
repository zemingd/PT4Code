N,M,*A = $<.read.split.map &:to_i
m = 4*M
T = A.sort!.inject(m-1,:+) / m
puts A[-M]>=T ? :Yes : :No