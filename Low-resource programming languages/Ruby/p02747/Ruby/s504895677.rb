m = gets.to_s

i=0;
flag = 0;
while i < m.length do 
    if m[i] != 'h' || m[i+1] != 'i' then
        flag = 1;
        break;
    end
    i += 2;
end
if flag == 0 then
    puts("Yes")
else
    puts("No")
end
