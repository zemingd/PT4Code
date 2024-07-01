N,Q = gets.chomp.split.map(&:to_i)

ne = Array.new(N+1) { Array.new }

(N-1).times do
  a,b = gets.chomp.split.map(&:to_i)
  ne[a].push(b)
end

tr = Array.new(N+1) { Array.new }
1.upto(N) do |i|
  tr[i].push(i)
  stack = ne[i]
  while !stack.empty?
    nex = stack.pop
    tr[i].push(nex)
    ne[nex].each do |nn|
      stack.push(nn)
    end
  end
end

ans = Array.new(N+1, 0)
Q.times do
  p,x = gets.chomp.split.map(&:to_i)
  tr[p].each do |tt|
    ans[tt] += x
  end
end
ans.shift
puts ans.join(' ')
