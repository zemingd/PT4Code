def solve(as,k)
  n = as.length
  ans = [-1]*n
  ans[k] = 1
  que = []
  as[k].each do |x,y|
    ans[x] = y
    que << x
  end
  
  while !que.empty?
    t = que.shift
    next if ans[t] == 0
    as[t].each do |x,y|
      return 0 if ans[x] != y && ans[x] != -1
      if ans[x] == -1
        ans[x] = y
        que << x
      end
    end
    #p t
  end
  #p [k, ans]
  return ans.count(1)
end

n = gets.to_i
as = []
n.times do |i|
  a = gets.to_i
  tmp = []
  a.times do |j|
    x,y = gets.split.map(&:to_i)
    x -= 1
    tmp << [x,y]
  end
  as << tmp
end
ans = 0
n.times do |i|
  t = solve(as, i)
  ans = t if t > ans
end
p ans