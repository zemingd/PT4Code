n=gets.to_i
s=gets.chomp
ew=[0]*n
n.times do |i|
  if s[i]=="W"
    ew[i+1]+=1 if i<n-1
  else
    if i>0
      ew[0]+=1
      ew[i]-=1
    end
  end
end
1.upto(n-1) do |i|
  ew[i]+=ew[i-1]
end
puts ew.min
