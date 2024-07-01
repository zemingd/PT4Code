h = gets.chomp.to_i

n=1
cnt=0
while n<=h
    n*=2
    cnt+=1
end

if h==1
    p 1
else
    p 2**cnt-1
end