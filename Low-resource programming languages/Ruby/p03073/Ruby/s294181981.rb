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

def my_sum(a)
    ret = 0
    a.each do |i|
        ret += i
    end
    ret
end

a0 = my_sum(chunks[0])
a1 = my_sum(chunks[1])
ans = a0 > a1 ? a1 : a0
print ans