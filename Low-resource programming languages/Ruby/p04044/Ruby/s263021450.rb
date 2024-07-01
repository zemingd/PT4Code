n,l = gets.split.map(&:to_i)
s = []
n.times{
  s << gets.chomp
}
s.sort!
for i in 0..n-1
print s[i]
end