n = gets.chomp!.to_i
pl = gets.split(" ").map(&:to_i)
d = Array.new(n, 0)
#p d
i = 1
while i <= n-2
  e = Array.new
  e = [pl[i-1].to_i, pl[i].to_i, pl[i+1].to_i]
  p e
  ne = e.sort
  d[ne[1]-1] += 1
  i+=1
end
p d.count{|item| item > 0 }