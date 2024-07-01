N,M = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = [nil,2,5,5,4,5,6,3,7,6]

a.sort_by!{|v| [b[v],-v]}
c,d = a[0],b[a[0]]
ans = c.to_s * (N/d)
ex = N % d

a.sort!.reverse!
l,r = 0,ans.length-1
a.each do |v|
  diff = b[v]-d
  if ex >= diff && v > c
    cnt = ex/diff
    ans[l,cnt] = v.to_s * cnt
    l += cnt
    ex %= diff
  end
end
a.sort_by!{|v| [-b[v],-v]}
a.each do |v|
  diff = b[v]-d
  if ex >= diff && v < c
    cnt = ex/diff
    ans[r-ex/b[v],cnt] = v.to_s * cnt
    r -= cnt
    ex %= diff
  end
end
puts ans
