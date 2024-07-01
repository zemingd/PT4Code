n = gets.to_i
aa = gets
r=false
i=0
a = aa.split(" ")
if a[0].to_i^a[2].to_i == a[1].to_i then
        r=true
else
        r=false
end
for i in 1..n-2 do
        if a[i-1].to_i^a[i+1].to_i == a[i].to_i then
                r=true
        else
                r=false
        end
end
if a[0].to_i^a[n-2].to_i == a[n-1].to_i then
        r=true
else
        r=false
end
if r == true then
        print("Yes")
else
        print("No")
end