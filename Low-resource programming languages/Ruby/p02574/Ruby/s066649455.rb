lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

N = lines[0][0]

num = []
for i in 1..10 ** 6 do
  num[i-1] = 0
end

for i in 1..N do
  num[lines[1][i-1]-1] += 1
end

max_num_div = 0
for i in 2..10 ** 6 do
  num_div = 0
  multi = 1
  while i * multi <= 10 ** 6 do
    num_div += num[i * multi - 1]
    multi += 1
  end
  if max_num_div < num_div then
    max_num_div = num_div
  end
end
  
if max_num_div == 1 then
  puts "pairwise coprime"
elsif max_num_div < N then
  puts "setwise coprime"
else
  puts "not coprime"
end
