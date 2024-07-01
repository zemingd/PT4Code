while  
    x = gets()
    x = x.split
    
    print "\n"
    x[0].to_i .times do
            print "#" * x[1].to_i
        print "\n"
    end
    if x[0].to_i == 0 && x[1].to_i == 0;break
    end
end

