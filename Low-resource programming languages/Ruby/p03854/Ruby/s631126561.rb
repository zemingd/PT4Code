s=gets.strip.reverse
strs=['dream','dreamer','erase','eraser']
flag=true
end_flag=true
while flag do
    end_flag=true
    strs.each do |n| 

        if s[0..n.length-1]==n.reverse
            s.slice!(0..n.length-1)

            end_flag=false
            break
        end
    end
    if end_flag
        flag=false
    end
end
puts s.empty? ? 'YES': 'NO'