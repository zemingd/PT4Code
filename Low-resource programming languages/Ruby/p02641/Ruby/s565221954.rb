line = gets.split(' ')
x = line[0].to_i
n = line[1].to_i

if n == 0 then
  p x
  return
end

pline = gets.split(' ')
nline = []
pline.each do |p|
  nline << p.to_i
end
nline.push x
nline.sort!.uniq!

a = ((nline[0]-1)..nline[nline.size - 1]+1).to_a

dist = a - nline
if dist.size == 0 then
  dist = nline
end
dist.push(x).sort!.uniq!
index = dist.index(x)
#p dist

if index == (dist.size-1) then
  dist.push x+1
end
left = dist[index] - dist[index-1]
right = dist[index+1] - dist[index]
answer = left <= right ? dist[index-1] : dist[index+1]
p answer
