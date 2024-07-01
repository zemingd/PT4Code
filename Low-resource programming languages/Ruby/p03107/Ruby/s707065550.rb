S=gets.chomp.chars.map{|x|x.to_i}
flag=true
c=0
stack=S
while flag do
    flag=false
    stack2=[]
    for i in 0...stack.size do
        if !stack2.empty? && stack2.last+stack[i]==1 then
            c+=2
            stack2.pop
            flag=true
        else
            stack2 << S[i]
        end
    end
    stack=stack2
end
p c
