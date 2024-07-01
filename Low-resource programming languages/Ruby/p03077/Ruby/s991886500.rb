n=gets.to_i
ns=5.times.map{gets.to_i}
ans=0
min=ns[0]
5.times do |i|
  if i==0
    if n>ns[i]
      ans+=n.quo(ns[i]).ceil
    else
      ans+=1
    end
  else
    if ns[i-1]>ns[i] && ns[i]<min
      ans+=min.quo(ns[i]).ceil
      min=ns[i]
    else
      ans+=1
    end
  end
end
puts ans
