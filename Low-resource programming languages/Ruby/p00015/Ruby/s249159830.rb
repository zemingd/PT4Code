i=gets.to_i
i.times do
        a,b=gets.split.map(&:to_i)
        add=a+b
        add=add.to_s.length
        if add<80
                print a+b,"\n"
        else
                print "overflow\n"
        end
end