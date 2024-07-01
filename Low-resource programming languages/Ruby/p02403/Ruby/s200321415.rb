while true
    str=gets
    array=str.chomp.split(" ")
    H=array[0].to_i
    W=array[1].to_i
    
    if H==0 && W==0 then
        exit(0)
    end
    
    H.times do
        puts "#"*W
    end
    print("\n")
end