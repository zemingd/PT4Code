n,q=gets.split.map(&:to_i)
s=gets.chomp
k=[0,0]
(n-1).times do |i|
  if s[i,2]=="AC"
    k[i+2]=k[i+1]+1
  else
    k[i+2]=k[i+1]
  end
end
q.times do
  l,r=gets.split.map(&:to_i)
  puts k[r]-k[l]
end
