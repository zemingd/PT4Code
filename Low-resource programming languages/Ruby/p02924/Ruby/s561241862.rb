N = gets.to_i

ret = (0..N-1).to_a.inject(&:+)
p ret
