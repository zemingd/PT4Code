n=gets.to_i
s=gets.chomp
c=[0]
cc=0
0.upto(n-2) do |i|
  if s[i]=="W"
    cc+=1
  end
  c[i+1]=cc
end
cc=0
(n-1).downto(1) do |i|
  if s[i]=="E"
    cc+=1
  end
  c[i-1]+=cc
end
puts c.min
