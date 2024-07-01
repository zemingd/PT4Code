N = gets.to_i
aa = gets.split.map(&:to_i)
aa.sort!

x = Array.new(aa.max + 2, 0)

aa.each do |a| 
  x_can = a
  x[x_can - 1] += 1 if x_can > 0
  x[x_can] += 1
  x[x_can + 1] += 1
end

X = x.index(x.max)
ans = aa.count(X - 1) + aa.count(X) + aa.count(X + 1)
p ans