n=gets.to_i
s=gets.chomp.split("")
cnt=0
ans=0
s.each do|c|
  if cnt==0 and c=="A"
    cnt+=1
  elsif cnt==1 and c=="B"
    cnt+=1
  elsif cnt==2 and c=="C"
    ans+=1
    cnt=0
  else
    cnt=0
  end
end
puts ans
