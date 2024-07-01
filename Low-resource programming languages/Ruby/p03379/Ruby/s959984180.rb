n = gets.chomp.to_i
a = []
a = gets.split.map(&:to_i)
c = []
for i in 0..n-1
  c = a.clone
  c.delete_at(i)
  c.sort!
  #p c
  puts c[n/2-1]
end
  