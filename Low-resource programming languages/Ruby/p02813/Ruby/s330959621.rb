N = gets.to_i
P = gets.split.map &:to_i
Q = gets.split.map &:to_i
a = 0
b = 0
n = N - 1
alist = Array.new()
blist = Array.new()
for i in 1..N
  alist.push(i)
  blist.push(i)
end
for p in P
  x = alist.index(p)
  a += x * (1..n).inject(1,:*)
  n -= 1
  alist.delete_at(x)
end
a = a - 1

n = N - 1
for q in Q
  x = blist.index(q)
  b += x * (1..n).inject(1,:*)
  n -= 1
  blist.delete_at(x)
end
b = b - 1
if a > b
  p a-b
else
  p b-a
end