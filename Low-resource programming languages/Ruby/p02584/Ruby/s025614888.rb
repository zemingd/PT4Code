x,k,d=gets.split.map(&:to_i)
ans1=x%d
ans2=ans1-d
ans=0
if ans1<=x-k*d
  ans=x-k*d
elsif x%d==0
  kai=(x)/d
  if k%2==0
    if kai%2==0
      ans=ans1
    else
      ans=ans2
    end
  else
    if kai%2==0
      ans=ans2
    else
      ans=ans1
    end
  end
elsif k%2==0
  kai=(x+ans2.abs)/d
  if kai%2==0
    ans=ans2
  else
    ans=ans1
  end
else
  kai=(x+ans2.abs)/d
  if kai%2==0
    ans=ans2
  else
    ans=ans1
  end
end
puts ans.abs
