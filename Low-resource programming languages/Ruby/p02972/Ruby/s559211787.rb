lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

N = lines[0][0]

dvd = []
for i in 1..N do
  dvd[i-1] = []
end
for i in 1..(N/2+1) do
  j = 2
  while i * j <= N do
    dvd[i*j-1].push(i)
    j += 1
  end
end

def zero_one(x)
  if x == 0 then
    return 1
  else
    return 0
  end
end
  
a = lines[1]
num_ans = 0
ans = []
for i in 1..N do  #examine the (N-i+1)-th box.
  if a[-i] == 1 then
    ans.push(N-i+1)
    num_ans += 1
    dvd[N-i].each do |j|
      a[j-1] = zero_one(a[j-1])
    end
  end
end
  
puts num_ans
ans.each do |i|
  print i.to_s + " "
end