n = gets.to_i

s=Array.new(n)
pp=Array.new(n)
r=Array.new(n)

for i in 0...n
  s[i], pp[i] = gets.chop.split
  pp[i]=pp[i].to_i
  r[i]=[s[i],pp[i]]
end

q=r.sort{|a,b| b[1]<=>a[1]}
q.sort!{|a,b| a[0]<=>b[0]}

for i in 0...n
  puts (r.find_index(q[i])+1)
end
