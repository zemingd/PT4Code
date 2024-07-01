lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

n = lines[0][0]
a = lines[1]

def binom(n)
  return n * (n-1) / 2
end

num = []
num_binom = []
naive_answer = 0
for i in 1..n do
  num[i-1] = a.count(i)
  num_binom[i-1] = binom(num[i-1])
  naive_answer += num_binom[i-1]
end

for k in 1..n do
  num_new = num[a[k-1]-1] - 1
  new_binom = binom(num_new)
  puts naive_answer - num_binom[a[k-1]-1] + new_binom
end