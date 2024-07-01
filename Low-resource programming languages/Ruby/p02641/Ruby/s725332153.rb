x, n = gets.chomp.split.map(&:to_i)
if n == 0
  puts x
  exit
end
p = gets.chomp.split.map(&:to_i)

visited = Array.new(101, false)
p.each do |i|
  visited[i] = true
end

q = [x]
cur = x
while !q.empty?
  cur = q.shift
  if visited[cur]
    q << cur - 1
    q << cur + 1
  else
    break
  end
end
puts cur