# Here your code !
n = gets.chomp
len = n.length
i = 0
while(i < len)
    if(n[i..(i+4)] == "dream")
        i+=5
        next
    elsif(n[i..(i+5)] == "eraser")
        i+=6
        next
    elsif(n[i..(i+4)] == "erase")
        i+=5
        next
    elsif(n[i..(i+6)] == "erdream")
        i+=7
        next
    elsif(n[i..(i+6)] == "ererse")
        i+=7
        next
    elsif(n[i..(i+7)] == "ereraser")
        i+=8
        next
    elsif(n[i..(i+6)] == "ererase")
        i+=7
        next
    else
        puts "NO"
        exit
    end
end
puts "YES"