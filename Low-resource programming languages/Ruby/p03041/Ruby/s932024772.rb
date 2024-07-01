N,K = gets.split.map(&:to_i)

s = gets.chop
s[K-1] = s[K-1].downcase
print s