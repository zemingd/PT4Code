n,m=gets.chomp.split(" ").map(&:to_i)
x=gets.chomp.split(" ").map(&:to_i)
if m==1
  puts 0
else
x.sort!
ans=x[m-1]-x[0]
dis=[]
(m-1).times do|i|
  dis.push(x[i+1]-x[i])
end
dis.sort!.reverse!
(n-1).times do|i|
  ans-=dis[i]
end
puts ans

end
