n,k=gets.chomp.split(" ").map(&:to_i)
s=gets

s[k-1] = s[k-1].downcase
print s
