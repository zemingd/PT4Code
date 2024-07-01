n=gets.to_i
h=gets.split.map(:to_i)
ans="Yes"
i=0
flg=0
while i<n
  d=h[i+1]-h[i]
  if d==2
    h[i+1]-=1
    flg=1
  elsif d==1
    flg=0
  elsif d==-1
    if flg==1
      ans="No"
      break
    else
      flg=1
    end
  elsif d==0
  else
    ans="No"
    break
  end
  i+=1
end
puts ans