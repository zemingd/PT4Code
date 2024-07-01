m = gets.to_s

i=0;
flag = 0;
if m.length < 2 then flag = 1; end
while i < m.length && flag == 0 do 
    if m[i] != 'h' || m[i+1] != 'i' then
        flag = 1;
        break;
    end
    i += 2;
end
if flag == 0 then
    puts("YES")
    #Yesのときだけ
else
    puts("No")
end
