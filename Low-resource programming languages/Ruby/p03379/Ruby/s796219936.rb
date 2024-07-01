n = gets.to_i
x = gets.split.map &:to_i
y = x.sort

mid0 = y[n/2-1]
mid1 = y[n/2]

n0 = 0
n1 = 0
for a in x
  if a<=mid0
    puts mid1
  else
    puts mid0
  end
end
