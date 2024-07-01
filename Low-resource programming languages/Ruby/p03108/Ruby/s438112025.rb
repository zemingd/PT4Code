def init(n)
  n.times do |i|
    Parent[i] = i
    Size[i] = 1
  end
end

def find(x)
  if Parent[x] == x
    return x
  else
    return Parent[x] = find(Parent[x])
  end
end

def unite(x,y)
  x,y = find(x),find(y)
  return if x==y

  x,y = y,x if Size[x] < Size[y]
  Size[x] += Size[y]  
  Parent[y] = x
end

n,m = gets.split.map(&:to_i)
edge = []
m.times do
  edge << gets.split.map(&:to_i)
end

Parent,Size = [],[]
init(n+1)

ans = [n*(n-1)/2]
edge.reverse.each do |arr|
  a,b = arr
  pa,pb = find(a),find(b)
  if pa == pb
    ans.unshift(ans[0])
  else
    ans.unshift(ans[0]-Size[pa]*Size[pb])
    unite(a,b)
  end
end
1.upto(ans.length-1) do |i|
  p ans[i]
end
