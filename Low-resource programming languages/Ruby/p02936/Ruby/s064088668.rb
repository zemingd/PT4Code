N,Q = gets.split.map &:to_i
es = {}
es[0] = { 1 => 1 }
es[1] = { 0 => 1 }
(N-1).times {
  a,b = gets.split.map &:to_i
  es[a] ||= {}; es[b] ||= {}
  es[a][b] = es[b][a] = 1
}

accum = Array.new(N+1, 0)
ans = Array.new(N+1, 0)
Q.times {
  p,x = gets.split.map &:to_i
  accum[p] += x
}

stack = [0]
while stack.size > 0 do
  n = stack.pop
  es[n].keys.each{ |m|
    es[m].delete(n)
    ans[m] += ans[n] + accum[m]
    stack << m
  }
end

puts ans[1..-1] * " "