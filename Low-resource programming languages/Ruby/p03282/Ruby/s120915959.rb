s=gets.chomp
k=gets.to_i
for i in 0..s.size-1
  num=s[i].to_i
  if num==1
    k-=1
  else
    k-=num**(5*10**15)
    if k<=0
      break
    end
  end
end
puts num
