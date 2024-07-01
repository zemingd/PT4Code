a=[]
for i in 0..4
  a[i]=gets.chomp.to_i
end

min=20000

a.permutation(5).each do |arr|
  t=0
  for i in 0..4
    
    if t%10==0
      t+=arr[i]
    else
      t+=arr[i]+10-t%10
    end
  end


  if min > t
    min=t
  end

end

puts min