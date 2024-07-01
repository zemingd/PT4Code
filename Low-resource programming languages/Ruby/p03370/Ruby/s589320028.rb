n,x = gets.split.map(&:to_i)
m = []
for i in 0..n-1 do
  m[i] = gets.to_i
end
#お菓子の元 残量
sum = m.inject(:+)
x -= sum
#作ったお菓子
count = m.size

min = m.min
while x >= min do
count += 1
x -= min
end

print count