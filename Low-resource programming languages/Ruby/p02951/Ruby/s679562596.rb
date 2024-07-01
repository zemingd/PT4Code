n = gets.split("").map {|e| e.to_i}
a = n[0]
b = n[1]
c = n[2]

ans = b+c-a
if ans<0 then ans = 0 end 

print(ans)