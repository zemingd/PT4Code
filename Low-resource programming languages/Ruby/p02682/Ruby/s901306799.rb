n=gets.split.map(&:to_i)
ans=0

if n[0]>n[3]
  ans=n[3]
 else n[0]<n[3]
 v=n[0]
    if n[1]>(n[3]-n[0])
     ans=v
    else
     ans=v-(n[3]-n[0]-n[1])
     end
 end

puts ans
