#!/home/ymduu/.rbenv/shims/ruby

S=STDIN.gets

ls=S.split("")
first=-1
last=20000000
count=0
for i in ls do
    #puts i
    if first==-1 && i=="A"
        first=count
    elsif i=="Z"
        last=count
    end
    count+=1
    
end
puts last-first+1
