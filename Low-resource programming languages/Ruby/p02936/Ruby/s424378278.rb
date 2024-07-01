n,q = gets.split.map(&:to_i)
@h = {}
(1..n).to_a.each {|i| @h[i] = []}
(n-1).times do
  a,b = gets.split.map(&:to_i)
  @h[a].push(b)
end
@ans = Array.new(n+1,0)

def rec(p,x)
  @ans[p]+=x
  @h[p].each {|hi| rec(hi,x)} if @h[p].length>0
end

q.times do
  p,x = gets.split.map(&:to_i)
  rec(p,x)
end

@ans.shift
puts @ans.join(" ")
