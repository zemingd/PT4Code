m = gets.chomp.to_s

i=0;
flag = 0;
if m.length < 2 then flag = 1; end
while i < m.length && flag == 0 do 
    if m[i..i+1] != "hi"  then
        flag = 1;
        break;
    end
    i += 2;
end
if flag == 0 then
    print("Yes\n")
else
    puts("No")
end
