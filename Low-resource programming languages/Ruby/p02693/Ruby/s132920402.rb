arr = [] 
while (gets) 
    arr << $_.split(" ")[0] 
end

k = arr[0]
a = arr[1]
b = arr[2]
i = a

for i in a..b
    if i%k==0
        puts "ok"
    else
        puts "NG"
end