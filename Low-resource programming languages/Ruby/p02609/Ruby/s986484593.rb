n = gets.chomp.to_i();
x = gets.chomp;
xi = x.to_i(2);
for i in 0..n-1 do
    e=0
    xc=x.dup
    if xc[i]=='0' then
        xc[i]='1'
    else
        xc[i]='0'
    end
    xci=xc.to_i(2);
    while xci!=0 do
        xci=xci%xci.to_s(2).count('1')
        e+=1
    end
    puts e
end