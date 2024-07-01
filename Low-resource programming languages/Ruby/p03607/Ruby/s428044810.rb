n =gets.chomp.to_i
d = 0
c = []
while s = gets
  c.push(s.split.map(&:to_i))
end
c.sort!
i = 0
t = 0
cnt = 0
while i < n do
  j = 0
  while c[i+j]==c[i] do
  j += 1
  end
  cnt += j%2
  i +=j
end
puts cnt