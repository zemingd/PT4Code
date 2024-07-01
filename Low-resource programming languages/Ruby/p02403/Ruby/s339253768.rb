while  
    x = gets()
    x = x.split
    if x[0].to_i == 0 && x[1].to_i == 0;break
    end
    print "\n"
    x[0].to_i .times do
        x[1].to_i .times do
            print "#"
        end
        print "\n"
    end
end

