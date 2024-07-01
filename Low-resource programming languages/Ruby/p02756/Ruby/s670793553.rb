s = gets.chomp
q = gets.to_i
reverse = false
q.times do 
    order = gets.chomp.split(' ')
    if order.size == 1
        s = s.reverse
    else
        if order[1] == "1"
            s = order[2] + s
        else
            s = s + order[2]
        end
    end
end
if reverse
    s = s.reverse
end
puts s