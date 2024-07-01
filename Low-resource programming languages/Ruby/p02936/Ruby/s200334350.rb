N,Q = gets.chomp.split.map(&:to_i)

ne = Array.new(N+1) { Array.new }

(N-1).times do
  a,b = gets.chomp.split.map(&:to_i)
  ne[a].push(b)
end

ans = Array.new(N+1, 0)
Q.times do
  p,x = gets.chomp.split.map(&:to_i)
  ans[p] += x
end

stack = [1]
while !stack.empty?
  t = stack.pop
  ne[t].each do |tt|
    ans[tt] += ans[t]
    stack.push(tt)
  end
end

ans.shift
puts ans.join(' ')
