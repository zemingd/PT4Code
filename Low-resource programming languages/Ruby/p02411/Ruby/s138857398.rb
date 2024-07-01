while true
m,f,r=gets.split(" ").map(&:to_i)
break if m==-1 && f==-1 && r==-1
if (m+f+r)<30
    puts "F"

elsif (m+f)>=80 
    puts "A"
elsif(m+f)>=65
    puts "B"
elsif(m+f)>=50
    puts "C"
elsif(m+f)>=30 #true
    if r>=50
        puts "C"
    elsif (m+r)<=50
        puts "F"
    else
        puts "D"
    end
end

end








