n=gets.to_i
s=gets.chomp.chars
l=[0]
0.upto(n-1) do |i|
  if s[i]=="#"
    l << l[-1]+1
  else
    l << l[-1]
  end
end
r=[0]
(n-1).downto(0) do |i|
  if s[i]=="."
    r << r[-1]+1
  else
    r << r[-1]
  end
end
r.reverse!
m=1/0.0
0.upto(n) do |i|
  c=l[i]+r[i]
  m=c if m>c
end
puts m
