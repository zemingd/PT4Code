while true
m,f,r=gets.split(" ").map(&:to_i)
break if m==-1 && f==-1 && r==-1
break if m.to_i>50 && f.to_i>50 && r.to_i>50
if (m+f+r)<30
    puts "F"

elsif (m+f)>=80 
    puts "A"
elsif(m+f)>=65
    puts "B"
elsif(m+f)>=50
    puts "C"
elsif(m+f)<=30
    if r>=50
        puts "C"
    else
        puts "D"
    end
end

end




