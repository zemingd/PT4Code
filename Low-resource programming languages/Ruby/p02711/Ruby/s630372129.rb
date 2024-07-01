s=gets.to_i
ans1=s%10
ans2=(s/10)%10
ans3=(s/100)%10
if ans1==7 || ans2==7 || ans3==7
  puts "Yes"
else
  puts "No"
end
