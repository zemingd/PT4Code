io = STDIN
s=io.gets.chomp.split(//).map(&:to_i)
k=io.gets.to_i
ss=0
while (ss=s.shift)
  x=(ss==1) ? 1 : ss**(10**12)
  break if   k <= x
  k-=x
end
puts ss
