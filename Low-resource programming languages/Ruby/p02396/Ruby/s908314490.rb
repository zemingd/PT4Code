i =1
while num=gets.to_i
    if num != 0
        printf("Case "+i.to_s+": "+num.to_s+"\n")
        i+=1
    else
        exit(0);
    end
end