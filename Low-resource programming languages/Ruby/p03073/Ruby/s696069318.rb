s = gets.chomp

chunks = [[],[]]
i = 0
last = ''
len = 0
s.each_char do |c|
  if c == last
    chunks[i].push(len)
    i = i == 0 ? 1 : 0
    len = 1
  else
    len += 1
  end

  last = c
end
chunks[i].push(len)
chunks[1].push(0)

p chunks

a0 = 0
a1 = 1
ans = a0 > a1 ? a1 : a0
print ans