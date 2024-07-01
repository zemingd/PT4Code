N = gets.to_i # レンガの個数
a = gets.split.map(&:to_i) # レンガに書かれてる数字

e=N
i=1
ans=0
while i<=e
  s=a.index(i)
  if s==nil
    ans = -1
    break
  else
    ans += s
    a = a.slice(s+1,e)
    e = a.length
  end
  i = i+1
end

puts ans