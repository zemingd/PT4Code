ns=gets.split.map(&:to_i).sort
k=gets.to_i

ret = ns[-1] * 2**k + ns[0..-2].inject(&:+)
p ret
