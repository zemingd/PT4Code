N,K = gets.split.map(&:to_i)
hs = gets.split.map(&:to_i)

p (hs.sort[0..-(1+K)].inject(&:+) || 0)
