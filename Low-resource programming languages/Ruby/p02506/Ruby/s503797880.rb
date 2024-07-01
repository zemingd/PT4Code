w = gets
count = 0
while true
    t = gets
   if t == "END_OF_TEXT"
        break
   end
    
    t = t.split(" ")
    t.length.times do |i|
        if t[i] =~ w
            count += 1
        end
    end
end

puts count