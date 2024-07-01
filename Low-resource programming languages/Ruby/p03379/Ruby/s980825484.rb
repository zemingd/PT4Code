n = gets.chomp.to_i
a = []
a = gets.split.map(&:to_i)
c = a.clone
c.sort!
#p c
for i in 0..n-1
  #p c.index(a[i])
  if c.index(a[i]) <= n / 2 -1
    puts c[n/2 ]
  else
    puts c[n/2-1]
  end
end
