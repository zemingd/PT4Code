s=gets.chomp.to_s
a=["SUN","MON","TUE","WED","THU","FRI","SAT","SUN","MON","TUE","WED","THU","FRI","SAT"]
ans=0
i=a.index(s)
(i+1..13).each do |x|
    if a[x]=="SUN"
        ans=x-i
        break
    end
end
p ans