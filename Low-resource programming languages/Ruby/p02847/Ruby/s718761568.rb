s=["SUN","MON","TUE","WED","THU","FRI","SAT"]
n=gets.chomp
for i in 0..6
  if s[i]==n
    ans=i.to_i
  end
end
puts 7-ans
