N,K=$<.read.split.map(&:to_i)

ret = K*((K-1)**(N-1))
puts ret
