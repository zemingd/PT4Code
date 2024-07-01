S=gets.chomp
Qn=gets.to_i

ans=S
Qn.times do
  q=gets.chomp.split
  if q[0]=="1"
    first=ans[0]
    ans[0]=ans[-1]
    ans[-1]=first
  else
    if q[1]=="1"
      ans = q[2] + ans
    else
      ans = ans + q[2]
    end
  end
end
puts ans
