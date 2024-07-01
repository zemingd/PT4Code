N = gets.to_i # レンガの個数
a = gets.split.map(&:to_i) # レンガに書かれてる数字

e=N
i=1

ans=0
s=a.index(i)
while s!=nil
  ans += s
  a = a.slice(s+1,e)
  e = a.length
  i = i+1
  s=a.index(i)
end

if i>1
  puts ans+e
else
  puts -1
end