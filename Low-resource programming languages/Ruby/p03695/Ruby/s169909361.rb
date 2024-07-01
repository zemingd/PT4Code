n = gets.to_i
a = gets.split.map{|m|m.to_i}
temp_color = ["hai","cha","midori","mizu","ao","ki","daidai","aka"]
color = Array.new
c = 0
a.each do |rate|
    i = rate / 400
    if i+1 < 9
        if !(color.include?(temp_color[i]))
            color.push(temp_color[i])
        end
    else
        c+=1
    end 
end
print color.length != 0 ? color.length : 1
print " "
print color.length+c
print "\n"