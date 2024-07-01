n=gets.to_i
ns=5.times.map{gets.to_i}
ans=1
4.times do |i|
  if i==0
    if n>ns[i]
      ans+=n.div(ns[i])+1
    else
      ans+=1
    end
  else
    if ns[i]>ns[i+1]
      ans+=ns[i].div(ns[i+1])+1
    else
      ans+=1
    end
  end
end
puts ans
